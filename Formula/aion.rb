class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/nick-skriabin/aion"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "e0890aabb093d419781da7d082a92f2586b7801b8ed5fa4cb36875d81d6fa0b5"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "8be083fe6aa13c0edd8d9ed4d5eeecb07da4fdfbc65b68d63373fc0e9e13e639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "6b85e6290022cebe99815f6172c8124032da335e4796bbb6d6ba777428c7e07b"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "6794eb0f1afbb5834ddae2454d37132be715bd952dfffd7f073b399cd6290b9f"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
