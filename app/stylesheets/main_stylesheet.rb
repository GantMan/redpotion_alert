class MainStylesheet < ApplicationStylesheet

  def root_view(st)
    st.background_color = color.white
  end

  def containing_scroller st
    st.frame = :full
  end

  def alert_view_section st
    st.frame = {bp: 20, w: screen_width - 5, centered: :horizontal}
    st.border_color = color.from_rgba(0,0,0,0.5)
    st.border_width = 1
    st.corner_radius = 5
    st.background_color = color.from_rgba(0, 0, 0, 0.2)
  end

  def alert_view_title st
    st.frame = {bp: 10, w: screen_width, h: 40}
    st.text_alignment = :centered
    st.number_of_lines = 2
    st.text = "UIAlertView Classic (Deprecated)"
  end

  def alert_view_button st
    basic_button(st)
    st.text = "UIAlertView"
  end

  def alert_view_ks_button st
    basic_button(st)
    st.text = "UIAlertView Kitchen Sink"
  end

  def alert_controller_section st
    st.frame = {t: 10, w: screen_width - 5, centered: :horizontal}
    st.border_color = color.from_rgba(0,0,0,0.5)
    st.border_width = 1
    st.corner_radius = 5
    st.background_color = color.from_rgba(0, 0, 0, 0.2)
  end

  def alert_controller_title st
    st.frame = {bp: 10, w: screen_width, h: 40}
    st.text_alignment = :centered
    st.number_of_lines = 2
    st.text = "UIAlertController"
  end

  def alert_controller_button st
    basic_button(st)
    st.text = "Simplest Alert"
  end

  def alert_controller_two st
    basic_button(st)
    st.text = "Alert with callback"
  end

  def alert_controller_three st
    basic_button(st)
    st.text = "Change Title and Message"
  end

  def alert_controller_four st
    basic_button(st)
    st.text = "Title and :sheet Style"
  end

  def alert_controller_fields_one st
    basic_button(st)
    st.text = "Fields :input Style"
  end

  def alert_controller_fields_two st
    basic_button(st)
    st.text = "Fields :secure Style"
  end

  def alert_controller_fields_three st
    basic_button(st)
    st.text = "Fields :login Style"
  end

  def alert_controller_fields_four st
    basic_button(st)
    st.text = "Fields :change_password Style"
  end

  def alert_controller_fields_five st
    basic_button(st)
    st.text = "Fields :custom Style"
  end

  def custom_actions_helper_alert st
    basic_button(st)
    st.text = "Custom Alert Actions"
  end

  def custom_actions_helper_sheet st
    basic_button(st)
    st.text = "Custom Sheet Actions"
  end

  def alert_from_popover st
    basic_button(st)
    st.text = "Alert From Popover"
  end

  def usage_tour st
    st.frame = {bp: 10, w: screen_width - 20, l: 10, h:20}
    st.clips_to_bounds = false
    st.text = "Basic Usage Tour"
  end

  def template_tour st
    st.frame = {bp: 10, w: screen_width - 20, l: 10, h:20}
    st.clips_to_bounds = false
    st.text = "Tour of Included Templates"
  end

  def alert_controller_yesno st
    basic_button(st)
    st.text = ":yes_no Template"
  end

  def alert_controller_yesnocancel st
    basic_button(st)
    st.text = ":yes_no_cancel Template :sheet"
  end


  def alert_controller_okcancel st
    basic_button(st)
    st.text = ":ok_cancel Template"
  end

  def alert_controller_deletecancel st
    basic_button(st)
    st.text = ":delete_cancel Template"
  end

  def action_sheet_section st
    st.frame = {bp: 20, w: screen_width - 5, centered: :horizontal}
    st.border_color = color.from_rgba(0,0,0,0.5)
    st.border_width = 1
    st.corner_radius = 5
    st.background_color = color.from_rgba(0, 0, 0, 0.2)
  end

  def action_sheet_title st
    st.frame = {bp: 10, w: screen_width, h: 40}
    st.text_alignment = :centered
    st.number_of_lines = 2
    st.text = "UIActionSheet Classic (Deprecated)"
  end

  def action_sheet_button st
    basic_button(st)
    st.text = "UIActionSheet"
  end


end
