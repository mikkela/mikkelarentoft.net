module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "mikkelarentoft.net"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  def caption
    if @title.nil?
      caption_used = "MISSING CAPTION"
    else
      caption_used = @title
    end

    "[#{caption_used}]"

  end

  def page
    if @page.nil?
      "Unknown"
    else
      @page
    end
  end
end
