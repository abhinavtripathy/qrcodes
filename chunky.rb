require 'chunky_png'

avatar = ChunkyPNG::Image.from_file('abc.png')
badge  = ChunkyPNG::Image.from_file('glogo.png')
avatar.compose!(badge, 200, 200)
avatar.save('composited.png', :fast_rgba)