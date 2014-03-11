module NewsHelper

  def short_desc(actu)
    s = "<h3>"
    s << ((d = I18n.l(actu.date)).empty? ? "" : d+" - " )
    s << actu.title
    s << "</h3>"
    raw s
  end

  def gmaps_iframe(address)
    raw "<iframe width='425' height='350' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=foo&amp;aq=&amp;ie=UTF8&amp;hq=#{address.gsub("'",'').gsub('"','')}&amp;output=embed'></iframe>"
  end

end
