module ApplicationHelper

  def title(t=nil)
    content_for :title, "ALÈM" + ( !t.empty? ? " | "+t : nil)
  end

  def description(d=nil)
    if d
      content_for :description,  d
    end
  end

end
