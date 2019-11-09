require 'chunky_png'
require "rqrcode"

qrcode = RQRCode::QRCode.new("aohdashdiashduasuhdahsduasudhgausgdaug daudgaugda dua sgdau dauda duag dua gdasd agduagduagjhausdhfuahsduhasuhdasfuhsuidfgsugfugsdifugsudfgusdfhuldhfsdfhlsudfhslufhl usfs fs f  sudf lsf s fs  fs sf  flsufhur ruy yl e fiu uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuull uuislfl     sfgiffffffffffffff ")

TRANSPARENT = ::ChunkyPNG::Color::TRANSPARENT
qr_image = qrcode.as_png(fill: TRANSPARENT, module_px_size: 4)

logo = ChunkyPNG::Image.from_file("alogo2.png")

height = (logo.dimension.height / 2).floor - (qr_image.dimension.height / 2).floor
width  = (logo.dimension.width  / 2).floor - (qr_image.dimension.width  / 2).floor

qr_composed = qr_image.compose(logo, width/2, height/2)
qr_composed.save("qr_composed.png")













# qr = ChunkyPNG::Image.from_file('abc.png')

# middle = qr.height / 2

# print(middle)




# avatar = ChunkyPNG::Image.from_file('abc.png')
# badge  = ChunkyPNG::Image.from_file('glogo.png')
# avatar.compose!(badge, 10, 10)
# avatar.save('composited.png', :fast_rgba)