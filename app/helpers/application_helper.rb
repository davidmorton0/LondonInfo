module ApplicationHelper
  # Returns the page title
  def full_title(page_title = '')
    if page_title.empty?
      page_title = "London"
    end
    page_title + " - London Info"
  end
end