module ApplicationHelper
    def login_helper
       if current_user.is_a?(GuestUser)
        (link_to "Login", new_user_session_path) + " " +
        (link_to "Register", new_user_registration_path)        
       else
        (link_to "Edit", edit_user_registration_path) + " " +
        (link_to "Logout", destroy_user_session_path, method: :delete)
       end
    end

    def session_helper
        if session[:source]
            content_tag(:p, "Thanks for visiting me from #{session[:source]}")
        end
    end
end
