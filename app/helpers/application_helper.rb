module ApplicationHelper

  def full_title(page_title)
    base_title = "UnBoggle"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def gravatar_for


  end
end
