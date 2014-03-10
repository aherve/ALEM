module ApplicationHelper

  def title(t=nil)
    content_for :title, "ALÈM" + ( !t.empty? ? " | "+t : nil)
  end

end
