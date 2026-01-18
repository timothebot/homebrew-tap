class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.1/lacy-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "656dfd13fa56b307cfff3fcf0c3712478bd3250a4988c642c2b9d48c39b95a1e"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.1/lacy-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "e84d0332192178f48b054b4de99cd159d61eda71623d7b6f0b660abf41720b8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.1/lacy-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a41116241bcbac446efd5aada685113d669d6aec731976a6661b4ba4e1183e8b"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.6.1/lacy-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29016638bebf4d02ab37339ee38d7123d46497785b92e5d96cd6a29143ff7247"
    end
  end

  def install
    bin.install "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
