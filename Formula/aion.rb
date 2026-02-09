class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/nick-skriabin/aion"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "d42e44b5533554f99f87f0dd301f370ac30a45ee79adce91247f82e0ff62681f"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "4f98446944405c328c438ecd94d7cfbc32619077646f23a2afd960332e75ee99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "00552fced004de461f6898a19b643bfce5931e0f2db1312a6ffa7b05a279a18d"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "596bc7ecdf32d555ac2d1aa6b6f021453f99cccedcad944c298e2f0084ce4910"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
