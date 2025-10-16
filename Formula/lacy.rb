class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.0/lacy-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "93bbaa2b6f1ac341dc00477aa6374f41e95e6cfd8e92020e654f799776f31e51"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.0/lacy-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "bbaeecdd1c76eec0f764d019aad41a2c7d86fbec88fedef224026ad95df4b3a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.0/lacy-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a680f7f3a7920b0c55ba563e15ac899006dab6a74ae5d5753929dabbb51567f8"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.0/lacy-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76a248eef603d435955d69ebe67e362f5b6a089816f3e061871fbd5f2c3e2b12"
    end
  end

  def install
    bin.install "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
