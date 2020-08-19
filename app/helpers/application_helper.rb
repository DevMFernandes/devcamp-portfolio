module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
    (link_to "Login", new_user_session_path, class: "#{style} #{active? new_user_session_path}") + " " +
    (link_to "Register", new_user_registration_path, class: "#{style} #{active? new_user_registration_path}")        
    else
    (link_to "Edit", edit_user_registration_path, class: "#{style} #{active? edit_user_registration_path}") + " " +
    (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    end
  end

  def session_helper
    if session[:source]
        content_tag(:p, "Thanks for visiting me from #{session[:source]}")
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: contact_path,
        title: "Contact"
      },
      {
        url: about_path,
        title: "About"
      },
      {
        url: portfolios_path,
        title: "Portfolio"
      },
      {
        url: blogs_path,
        title: "Blog"
      },
    ]
  end

  def nav_helper style, tag
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
