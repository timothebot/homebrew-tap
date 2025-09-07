class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.2.2/lacy-lacy-x86_64-apple-darwin"
      sha256 "77295ce24714a843e40cd9a082e5139f536f9bc2d13ed7bace2e4c25e9a7a21b"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.2.2/lacy-lacy-aarch64-apple-darwin"
      sha256 "58a61597d8dfa681a9dc4f099e9c8d02fb8de925f7e17ca13ff40a0aa23e75db"
    end
  end

  def install
    bin.install Dir["lacy*"].first => "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
