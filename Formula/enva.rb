class Enva < Formula
  desc "Per-directory environment variable manager with automatic shell integration"
  homepage "https://github.com/nick-skriabin/enva"
  url "https://github.com/nick-skriabin/enva/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "3a7864b3725883b7c1895a9c602e7b39ba9666a55b191dfeaf15ba35d460984c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/enva"
  end

  def caveats
    <<~EOS
      To activate enva, add to your shell config:

      For zsh (~/.zshrc):
        eval "$(enva hook zsh)"

      For bash (~/.bashrc):
        eval "$(enva hook bash)"

      For fish (~/.config/fish/config.fish):
        enva hook fish | source
    EOS
  end

  test do
    assert_match "Per-directory environment variable manager", shell_output("#{bin}/enva --help")
  end
end
