module ApplicationHelper

  def hero_unit
  end

  def title(*args)
    page_title = *args.join(' ')

    content_for(:title) { page_title.join }
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

end
