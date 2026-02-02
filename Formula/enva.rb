class Enva < Formula
  desc "Per-directory environment variable manager with automatic shell integration"
  homepage "https://github.com/nick-skriabin/enva"
  url "https://github.com/nick-skriabin/enva/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
