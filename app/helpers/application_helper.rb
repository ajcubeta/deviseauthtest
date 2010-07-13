module ApplicationHelper
  def link_status(current_user)
    if user_signed_in?
      content_tag(:span, 'Signed in as ') +
      content_tag(:span, link_to(current_user.email, edit_user_registration_path) + '. Not you? ') +
      content_tag(:span, link_to("Logout", destroy_user_session_path))  
    else
      content_tag(:span, link_to("Register", new_user_registration_path) + ' or ') +
      content_tag(:span, link_to("Login", new_user_session_path))
    end
  end
end
