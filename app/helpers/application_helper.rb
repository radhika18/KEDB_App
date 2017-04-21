module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
  def include_gon
    data = Rails.cache.read('gon_variables') || {}
    script = "<script>window.Gon = {};"
    data.each do |key, val|
      script += "Gon." + key.to_s + val.to_json + ";"
    end
    script += "</script>"
    script.html_safe
  end
end