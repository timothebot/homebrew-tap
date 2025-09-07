class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-x86_64-apple-darwin"
      sha256 "569ce0081cb5b9c025f747ebcf5b4979cd0e8c5195fc9b0d02c5f770b1616fee"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-aarch64-apple-darwin"
      sha256 "d37f61e6176fc2f7e7f12cd7592aafbaf22656dfc17f1cb0f214a2e7da2fd452"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-x86_64-unknown-linux-gnu"
      sha256 "bf54fd810f71cb492206445fb0a67ddbf0a9814a607b45f8422b4400350486eb"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-aarch64-unknown-linux-gnu"
      sha256 "fc84de12f72e0831434ae659ca1e341148ab5b1e95e11ab39ec65154a408e614"
    end
  end

  def install
    bin.install Dir["lacy*"].first => "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
