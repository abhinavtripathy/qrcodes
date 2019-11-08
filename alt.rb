# Dependencies
require 'rqrcode'
require 'chunky_png'


def customQRcode(inputStr) 
    qrcode = RQRCode::QRCode.new(inputStr).as_png(fill: 'white', color: 'black', file: 'abc.png')
end

customQRcode("hello world")