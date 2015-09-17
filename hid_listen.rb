require 'formula'

class HidListen < Formula
  homepage 'https://www.pjrc.com/teensy/hid_listen.html'
  version '20150917'
  url 'https://www.pjrc.com/teensy/hid_listen.mac'
  sha1 'fc8b20ca9e13511fda30c77dee4f32c2072c3e08'

  def install 
    ohai 'Copying binaries...'
#    system 'cp', '-v', 'hid_listen.mac', "#{prefix}/"
    bin.install "hid_listen.mac"
  end
end

