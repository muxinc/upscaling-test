
13.times do |i|
  width = 4*((1728*0.9**i)/4).floor
  puts width
  puts `ffmpeg -i videos/pedestrian-1920.mp4 -vf scale=#{width}:-2 -crf 18 videos/pedestrian-#{width}.mp4`
end
