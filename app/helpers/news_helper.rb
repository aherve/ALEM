module NewsHelper

  def short_desc(actu)
    s = "<h3>"
    s << ((d = I18n.l(actu.date_time)).empty? ? "" : d+" - " )
    s << actu.title
    s << "</h3>"
    raw s
  end

end
