class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-x86_64-apple-darwin"
      sha256 "600d3dd53968fe628140cbb095945e36c82ada8a4ed8258adb162d937123f8f7"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-aarch64-apple-darwin"
      sha256 "df3606f41d90125172710fb0c39fc78af1226404ce2dc30dbd519e9a466a9e63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-x86_64-unknown-linux-gnu"
      sha256 "4351eeb2e090ee5dc488e7e87d0fd3296471c1234450d1df97069fc939a1df6c"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.4.0/lacy-lacy-aarch64-unknown-linux-gnu"
      sha256 "13b9a312e94500810c57283ba08cd24da9babfc729387980c3109721bedb66b1"
    end
  end

  def install
    bin.install Dir["lacy*"].first => "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
