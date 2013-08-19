module StaticPagesHelper
  def title(page_title)
    base_title = "DemoPortal"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
