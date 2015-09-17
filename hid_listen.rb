require 'formula'

class HidListen < Formula
  homepage 'https://www.pjrc.com/teensy/hid_listen.html'
  version '20150917'
  url 'https://www.pjrc.com/teensy/hid_listen.mac'
  sha1 '7f2d8c3644cd76da1b78d17a0770c8c0efbff957'

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-v', 'hid_listen.mac' "#{prefix}/"
  end
end

