module VideosHelper
  def print_all_tags
    total = ''
    4.times do
      total += "\n<br>"
      total += video_tag("/en_rails_stukio_ajax.mp4", width: '320', height: '240', controls: true)
    end
    total
  end
end
