module ApplicationHelper

	def full_title(page_title)
		base_title = "Bauer Publishing Remittance Advice Portal"
		if page_title.empty?
			base_title
		else
		"#{base_title} | #{page_title}"	
		end
	end	

	# def sortable(column, title = nil)
	# 	title ||= column.titleize
	# 	css_class = column == sort_column ? "current #{sort_direction}" : nil
	# 	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	# 	link_to title, :sort => column, :direction => direction, { :class=>css_class}
	# end


	def sortable(column, title = nil) #uses bootstrap
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to "#{title} <i class='#{direction == "desc" ? "icon-arrow-down" : "icon-arrow-up"}'></i>".html_safe, params.merge(:sort => column, :direction => direction,:page => nil), {:class => css_class} #original with bootstrap
        #link_to title, :sort => column, :direction => direction, { :class=>css_class} #original
        #link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class} #original with tutorial modification
	end
end

