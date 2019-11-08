require 'rqrcode'
require 'chunky_png'


def generateQR(inputStr)
    qrcode = RQRCode::QRCode.new(inputStr)

    png = qrcode.as_png(
    bit_depth: 1,
    border_modules: 4,
    color_mode: ChunkyPNG::COLOR_GRAYSCALE,
    color: 'black',
    file: nil,
    fill: 'white',
    module_px_size: 6,
    resize_exactly_to: false,
    resize_gte_to: false,
    size: 120
    )
    png.save(inputStr + ".png")
    return true

end 

generateQR("helloworld")






# png = qrcode.as_png(
#     resize_gte_to: false,
#     resize_exactly_to: false,
#     fill: 'white',
#     color: 'black',
#     size: 120,
#     border_modules: 4,
#     module_px_size: 6

# )


