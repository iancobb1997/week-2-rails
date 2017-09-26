module ApplicationHelper
	def login_helper style = " "
		if current_user.is_a?(AdminUser)
	  	  (link_to "Register", new_admin_session_path, class: style) +
	      " ".html_safe +
	      (link_to "Login", new_admin_session_path, class: style)
			else
	  	  link_to "Logout", destroy_admin_session_path, method: :delete, class: style
		end
	end
end
