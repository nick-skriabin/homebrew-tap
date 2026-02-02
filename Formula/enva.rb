class Enva < Formula
  desc "Per-directory environment variable manager with automatic shell integration"
  homepage "https://github.com/nick-skriabin/enva"
  url "https://github.com/nick-skriabin/enva/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fdf38fcdae77a241c92a547a0540fbec49f87cee1a41c4ff1aa48f3ecf07ba38"
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
