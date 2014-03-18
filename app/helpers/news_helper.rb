module NewsHelper

  def short_desc(actu)
    s = "<h3>"
    s << ((d = I18n.l(actu.date)).empty? ? "" : d+" - " )
    s << actu.title
    s << "</h3>"
    s << image_tag(actu.img.thumb.url) if actu.img
    raw s
  end

  def gmaps_iframe(address)
    raw "<iframe width='425' height='350' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=#{address}&amp;aq=&amp;ie=UTF8&amp;hq=&amp;hnear=#{address}&amp;t=m&amp;z=14&amp;output=embed'></iframe>
<br /><small><a href='https://maps.google.fr/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=#{address}&amp;aq=&amp;ie=UTF8&amp;hq=&amp;hnear=#{address}&amp;t=m&amp;z=14&amp;' style='color:#0000FF;text-align:left'>Agrandir le plan</a></small>"
  end

end
