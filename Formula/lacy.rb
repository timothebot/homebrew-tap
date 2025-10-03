class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.5.1/lacy-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "22d54c6794238c7cbc6f4ed71632de0b9e8ceb5b6aa41ed751fc19a481cfb2e4"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.5.1/lacy-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3de05ce1e036496e9100ae38a11bea94b05974fc413d2567da85131525753001"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.5.1/lacy-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61b1cf4682ffaf23c17fdc474c558d868437438d243f7a92625c2d4b37ad56cc"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.5.1/lacy-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdc77b0968dfd076fac14c529c15de77ce0a5702defa70da04efde28464b6d3b"
    end
  end

  def install
    bin.install "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
