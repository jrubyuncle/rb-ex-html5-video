module VideosHelper
  def print_all_tags
    #vhash = '2Il7PPhen3o'
    #title = 'stuk.io, rails ajax'
    duration_hash = {
      '0m0s' => 'start',
      '0m7s' => 'go to railsguides, working with javascript in rails',
      '0m19s' => 'waht is ajax, javascript has two powerful fearutes',
      '1m05s' => 'this is the app going to build',
      '2m18s' => 'so lets begin, rails new my_ajax',
      '2m58s' => 'rails g scaffold Post title:string content:text',
      '3m25s' => 'rake db:migrate, since scaffold create migration, rails s',
      '3m48s' => 'opne sublime text, in routes.rb, root posts#index',
      '4m35s' => 'do some styling',
      '5m07s' => 'begin on the sublime, go to getbootstrap/get started, copy bootstrap cdn to application.html.erb',
      '5m45s' => 'lets do some changes to our views, copy to index.html.erb from http://getbootstrap.com/javascript/#modals-examples',
      '6m23s' => 'delete content of index.html.erb, create new partial _post.heml.erb, data-target=#mynew_post, id=container_posts, id=mynew_post, ',
      '8m08s' => '_post.html.erb, div id=post_<%= post.id %>',
      '10m10s' => 'bug, @post = Post.new',
      '11m12s' => '*** has finished styling the app, back to rails guides, remote: true, format.js, create.js.erb',
      '12m30s' => '*** 3 steps, 1. in form_for, add remote: true, 2. in posts controller, add format.js',
      '13m07s' => '*** the 3rd step, create create.js.erb, alert("post created")',
      '13m43s' => 'test',
      '14m37s' => 'the 1st thing to close the modal, ',
      '15m16s' => 'empty post_title post_content',
      '16m04s' => '$("#container_posts").prepend()',
      '18m56s' => 'check it',
      '19m29s' => '*** 3 steps',
      '19m58s' => 'do the same for update and destroy',
      '23m18s' => 'test the update',
      '23m50s' => 'for the destroy',
      '25m03s' => 'test the destroy',
      '25m32s' => 'ok, the end'
    }

    total = ''
    duration_hash.keys.each_with_index do |key, index|
      order = index.to_i + 1

      expr = key.gsub('m00s', '*60').gsub('m0s', '*60').gsub('m0', '*60+').gsub('m', '*60+').gsub('s', '')
      puts "[#{expr}]"
      start_time_in_sec = eval(expr)

      total += "\n<hr>#{order}/#{duration_hash.size}: #{key}"
      total += "<br>"
      total += video_tag("/en_rails_stukio_ajax.mp4\#t=#{start_time_in_sec}", width: '320', height: '240', controls: true)
    end
    total
  end
end
