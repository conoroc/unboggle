module ApplicationHelper


  def full_title(page_title)
    base_title = "UnBoggle"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def gravatar_for(user, options = {size: 50})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def user_likes(current_user, resource_id)
    Like.find(:first, :conditions => ['user_id = ? AND resource_id = ?', current_user, resource_id]).nil?
  end


end
