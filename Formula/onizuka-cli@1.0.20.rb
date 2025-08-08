class OnizukaCliAT1020 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.20)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.20/ozk-darwin-arm64.tar.gz"
      sha256 "0e141b8854a564e72d3717f8d0520c102af4caf300d5d64b56a6eac8f52d8cae"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.20/ozk-darwin-amd64.tar.gz"
      sha256 "83aa70f77b097cb756ba09cdc1879f56c4b9336fbb0573211d2c10660be3f253"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.20/ozk-linux-arm64.tar.gz"
      sha256 "cfdb9c07c91dcaaca35e53434fb34ed42e0b8428ffc9649109e43b64e7242d28"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.20/ozk-linux-amd64.tar.gz"
      sha256 "054368e774cf2631f83784efa9dfef06f5d13d430c4f8e7949f66f6f1ce03cbf"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
