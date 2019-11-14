require 'chunky_png'
require "rqrcode"

#function to generate custom QR code with alpha blending with a logo file

def customQRcode(inputStr) 
    qrcode = RQRCode::QRCode.new(inputStr).as_png(fill: 'white', color: 'black', file: 'abc.png')
    avatar = ChunkyPNG::Image.from_file('abc.png')

    # alogo.png being the logo file
    badge  = ChunkyPNG::Image.from_file('alogo.png')

    print("height of backgound:")
    print(avatar.height)
    print("height of logo:")
    print(badge.height)

    #Alpha Blending
    avatar.compose!(badge, avatar.height/2 - badge.height/2, avatar.height/2 - badge.height/2)
    avatar.save('composited.png', :fast_rgba)
end
















# qr = ChunkyPNG::Image.from_file('abc.png')

# middle = qr.height / 2

# print(middle)




# avatar = ChunkyPNG::Image.from_file('abc.png')
# badge  = ChunkyPNG::Image.from_file('glogo.png')
# avatar.compose!(badge, 10, 10)
# avatar.save('composited.png', :fast_rgba)