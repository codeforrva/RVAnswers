module ApplicationHelper
  def markdown_to_html(content)
    BlueCloth.new(content).to_html.html_safe
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end

  # Given an email address, determine whether it is an "admin" email address.
  # @param {string} - email
  # @return {boolean}
  def is_admin?(email)
    ["oscarluke@me.com",
     "krb232@gmail.com",
     "info@bronzerocket.com",
     "crm@richmondgov.com",
     "david.boone@richmondgov.com",
     "lana.agostini@richmondgov.com",
     "lisa.smith@richmondgov.com",
     "humanblueprint@gmail.com",
     "zach.mcauliffe@gmail.com",
     "nliu@inmunited.com"].include?(email)
  end
end
