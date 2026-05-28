class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.1/lacy-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "3bc1380242615358b9eb4eb17029b81d9272dbf6c1ebdcc785434a5a13e1e9db"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.1/lacy-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "4dd57392149427a3926910a129a8a46088a667653a8738ee3e0dc913474f8f32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.1/lacy-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d23f9f72b4c556a964a47c0178340c0ea881e7c0ffd3e013cbfa6f566279359"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.1/lacy-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd7acc5c31d1284edb7178b186f7060a652d80e74efa5c783f0ec330b6b8e4a3"
    end
  end

  def install
    bin.install "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
