module ApplicationHelper
	def flash_messages
		flash.each do |k, message|
			content_tag :div, message, class: "flash-notices"
		end
	end
end
