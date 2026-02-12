class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/nick-skriabin/aion"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "eefd446fed7ec33ce97c63882c39e3e4c79e31bdc2ed486363e6662d0feb84c9"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "c83dff771f2108bbf8e0b9abaeb620180b7b8e43d7e47938eeac4ff391b14bc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "0ea8e720aedd7f5a97ff71f48fd5f24bc89ceb8c643719ccbc0d719b2a7d4e60"
    end
    on_intel do
      url "https://github.com/nick-skriabin/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "6787250095a9b473b7e7baeb6da8534c30f21deab4c5dd9ddc0a1d423d8d601d"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
