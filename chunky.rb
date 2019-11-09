require 'chunky_png'


qr = ChunkyPNG::Image.from_file('abc.png')

middle = qr.height / 2

print(middle)




# avatar = ChunkyPNG::Image.from_file('abc.png')
# badge  = ChunkyPNG::Image.from_file('glogo.png')
# avatar.compose!(badge, 10, 10)
# avatar.save('composited.png', :fast_rgba)