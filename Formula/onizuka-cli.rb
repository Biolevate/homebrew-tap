class OnizukaCli < Formula
  desc "CLI tool for Biolevate operations"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "latest"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.0/gto-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.0/gto-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.0/gto-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.0/gto-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end 