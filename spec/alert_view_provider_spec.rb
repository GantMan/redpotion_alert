describe "RubyMotionQuery" do
  describe "AlertViewProvider" do
    before do
      @p      = RubyMotionQuery::AlertViewProvider.new
      @ok     = RubyMotionQuery::AlertAction.new(title: "OK", tag: :ok, style: :default)
      @cancel = RubyMotionQuery::AlertAction.new(title: "Cancel", tag: :cancel, style: :cancel)
      @boom   = RubyMotionQuery::AlertAction.new(title: "Boom!", tag: :boom, style: :destructive)
    end

    it "should prevent nil actions" do
      Proc.new { @p.build(nil) }.should.raise(ArgumentError)
    end

    it "should prevent empty actions" do
      Proc.new { @p.build([]) }.should.raise(ArgumentError)
    end

    describe "alert view with one text field" do

      before do
        @p.build [@ok], title: "hi", style: :alert, textfields: [placeholder: "hi"]
      end

      it "should have one text field" do
        @p.alert_view.textFieldAtIndex(0).should != nil
      end

    end

    describe "alert view with two text field" do

      before do
        @p.build [@ok], title: "hi", style: :alert, textfields: [placeholder: "hi"]
      end

      it "should have one text field" do
        @p.alert_view.textFieldAtIndex(0).should != nil
      end

    end

    describe "alert view with ok button" do

      before do
        @p.build [@ok], title: "title", message: "message"
      end

      it "should have the right title" do
        @p.alert_view.title.should == "title"
      end

      it "should have the right message" do
        @p.alert_view.message.should == "message"
      end

      it "should create a UIAlertView" do
        @p.alert_view.class.should == UIAlertView
      end

      it "should have 1 button" do
        @p.alert_view.numberOfButtons.should == 1
      end

      it "should have 0 cancel buttons" do
        @p.alert_view.cancelButtonIndex.should < 0
      end

      it "should have the right button title" do
        @p.alert_view.buttonTitleAtIndex(0).should == @ok.title
      end

    end

    describe "alert view with a cancel button" do

      before do
        @p.build [@cancel], title: "title"
      end

      it "should have 1 button" do
        @p.alert_view.numberOfButtons.should == 1
      end

      it "should have 1 cancel button" do
        @p.alert_view.cancelButtonIndex.should == 0
      end

      it "should have the right button title" do
        @p.alert_view.buttonTitleAtIndex(0).should == @cancel.title
      end

    end

    describe "alert view with a destructive button" do

      before do
        @p.build [@boom], title: "title"
      end

      it "should have 1 button" do
        @p.alert_view.numberOfButtons.should == 1
      end

      it "should have 0 cancel buttons" do
        @p.alert_view.cancelButtonIndex.should == -1
      end

      it "should have the right button title" do
        @p.alert_view.buttonTitleAtIndex(0).should == @boom.title
      end

    end


  end
end
