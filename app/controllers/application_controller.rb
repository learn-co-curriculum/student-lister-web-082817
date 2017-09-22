class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :make_header, :make_link

  def make_header(text)
    "<h1>#{text}</h1>".html_safe
  end

  def make_link(text, path)
    # '<a href="/students/2">terrance</a>'
    if path.is_a? String
      "<a href='#{path}'>#{text}</a>".html_safe
    else
      "<a href='/#{path.class.to_s.downcase.pluralize}/#{path.id}'>#{text}</a>".html_safe
    end
  end
end
