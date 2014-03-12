module VideosHelper
  def describe(video)
    (d = video.description).empty? ? "" : raw(d)
  end
end
