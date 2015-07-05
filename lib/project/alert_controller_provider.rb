module RubyMotionQuery

  # The new dual-purpose iOS 8 UIAlertControllerProvider
  class AlertControllerProvider

    attr_reader :alert_controller

    def build(actions, opts={})
      raise ArgumentError.new("At least 1 action is required.") unless actions && actions.length > 0
      @actions = actions
      @opts = opts

      # create our alert controller
      style = RubyMotionQuery::AlertConstants::ALERT_TYPES[@opts[:style]]
      @alert_controller = UIAlertController.alertControllerWithTitle @opts[:title], message:@opts[:message], preferredStyle: style

      # load up the UIAlertController's actions
      @actions.each do |alert_action|

        # convert the style
        ios_style = RubyMotionQuery::AlertConstants::ALERT_ACTION_STYLE[alert_action.style]

        # convert the callback
        handler = lambda do |action|
          if !@opts[:textfields] && !alert_action.handler.nil?
            alert_action.handler.call(alert_action.tag)
          elsif @opts[:textfields] && !alert_action.handler.nil?
            alert_action.handler.call(alert_action.tag, @alert_controller.textFields.map {|t| t.text})
          end
        end if alert_action.handler

        # create teh action
        action = UIAlertAction.actionWithTitle alert_action.title, style: ios_style, handler: handler

        # add it to the UIAlertController
        @alert_controller.addAction action
      end

      textfields = @opts[:textfields]
      if(textfields)
        textfields.each do |t|
          @alert_controller.addTextFieldWithConfigurationHandler -> (textField) {
            textField.placeholder = t[:placeholder] || "Enter some text"
            textField.secureTextEntry = t[:secure] || false
          }
        end
      end

      self
    end

    def show
      rmq.view_controller.presentViewController(@alert_controller, animated: @opts[:animated], completion: nil)
    end

  end
end
