class OnizukaCliAT1057 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.57)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.57/ozk-darwin-arm64.tar.gz"
      sha256 "02fbbcecb672c33dae87bb2ad3c4a251cae8cf699400002e788627a5f3fe67d9"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.57/ozk-darwin-amd64.tar.gz"
      sha256 "3a997afc7bc329201107b08d9e4a632ed20bc82912682cc93188c30c1a8bdb57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.57/ozk-linux-arm64.tar.gz"
      sha256 "3bf13b9e1df23725a672c93d41b14ead93c366b8e964804662e4c185fb242141"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.57/ozk-linux-amd64.tar.gz"
      sha256 "8df275217c38625cb13bb4821070a33f5f5453ced410c2c250c023729105ec87"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
