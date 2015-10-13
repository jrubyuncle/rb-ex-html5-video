module VideosHelper
  def print_all_tags
    duration_hash = {
        '0m00s' => 'start',
        '0m11s' => 'create branch',
        '0m38s' => 'rebase',
        '1m29s' => 'git checkout, git rebase',
        '2m48s' => 'most common in open source project',
        '3m16s' => 'merges',
        '3m40s' => 'rebase v.s. merge'
    }
    total = ''
    duration_hash.keys.each_with_index do |key, index|
      order = index.to_i + 1

      expr = key.gsub('m00s', '*60').gsub('m0s', '*60').gsub('m0', '*60+').gsub('m', '*60+').gsub('s', '')
      puts "[#{expr}]"
      start_time_in_sec = eval(expr)

      total += "\n<hr>#{order}/#{duration_hash.size}: #{key}"
      total += "<br>"
      total += video_tag("/git_rebase.mp4\#t=#{start_time_in_sec}", width: '320', height: '240', controls: true)
    end
    total
  end
end
