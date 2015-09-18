# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class TeensyCli < Formula
  desc "Command-line integration for Teensy USB development boards"
  homepage "https://www.pjrc.com/teensy/loader_cli.html"
  url "https://github.com/PaulStoffregen/teensy_loader_cli"
  version "0.3"
  sha256 "365cd46d64acb7068de457b9b1103b56e69438cf7b0764f7cf2b3eb623fc0ab2"

  # depends_on "cmake" => :build
  depends_on "libusb"
  depends_on "libusb-compat"
  conflicts_with "teensy_loader_cli", :because => "this is a better/different way to build it"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # system "cmake", ".", *std_cmake_args
    system "make", "teensy_loader_cli" # if this fails, try separate make/make install steps
    chmod 0555, "teensy_loader_cli"
    bin.install "teensy_loader_cli" 
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test teensy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
