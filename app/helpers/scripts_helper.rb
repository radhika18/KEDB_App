module ScriptsHelper
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
