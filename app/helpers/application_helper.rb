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

  def twitterized_type(type)
    case type
      when :alert
        "alert-block"
      when :error
        "alert-error"
      when :notice
        "alert-info"
      when :success
        "alert-success"
      else
        type.to_s
    end
  end

  def flash_messages
    flash.each do |msg_type, text|
      concat(
        content_tag(:div, 
          button_tag(:type => 'button', :class => 'close', :data => { :dismiss => 'alert'}) { 'x' } +
          content_tag(:strong, msg_type.capitalize.to_s + '! ') + text, 
        :class => "alert #{twitterized_type(msg_type)}")
      )
    end
    nil
  end
end
