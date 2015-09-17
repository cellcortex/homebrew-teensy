require 'formula'

class HidListen < Formula
  homepage 'https://www.pjrc.com/teensy/hid_listen.html'
  version '100'
  url 'https://www.pjrc.com/teensy/hid_listen.mac'
  sha1 'fc8b20ca9e13511fda30c77dee4f32c2072c3e08'

  def install 
    ohai 'Copying hid_listen...'
    chmod 0555, "hid_listen.mac"
#    system 'cp', '-v', 'hid_listen.mac', "#{prefix}/"
    bin.install "hid_listen.mac"
    bin.install_symlink libexec/"hid_listen.mac"
  end
end

