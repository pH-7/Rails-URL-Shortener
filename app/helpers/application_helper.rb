module ApplicationHelper

  # Returns the title of the page (optimized for SEO)
  def title
    def_title = "Shorten URL - Free Online Service"
    if @title.nil?
      def_title
    else
      "#{@title} | #{def_title}"
    end
  end
end
