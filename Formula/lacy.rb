class Lacy < Formula
  desc "Fast magical cd alternative for lazy terminal navigators"
  homepage "https://github.com/timothebot/lacy"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.0/lacy-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "7184eb7588962098dfb35350f33045ffa7664e5bb5400e6042f615a99c640e8e"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.0/lacy-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "7a649aa78c2052c14b376154d587a8aaa7ef984c0492488bc73fad8db57b8039"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.0/lacy-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3573869dddac1184fbf41e25014f6e13e630c15ae4abd9d2e20987b343d6e670"
    end

    on_arm do
      url "https://github.com/timothebot/lacy/releases/download/v0.7.0/lacy-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a5b4ee02318e908a1ce470b37aa50bfdee7f844b13496c049c1fa7557c17cb7"
    end
  end

  def install
    bin.install "lacy"
  end

  test do
    system "#{bin}/lacy", "--version"
  end
end
