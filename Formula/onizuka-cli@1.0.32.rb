class OnizukaCliAT1032 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.32)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.32/ozk-darwin-arm64.tar.gz"
      sha256 "080b3447dc4fe1d2bd67b1bd6d0417e7e11261ffbb24dd0fe23643dd3ebab33f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.32/ozk-darwin-amd64.tar.gz"
      sha256 "fa255931d45a32fd38cde2cefdd1227fc109cac67abf0dc37fe3c743b813c310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.32/ozk-linux-arm64.tar.gz"
      sha256 "faa5fe66e4300c8079993598184b2ffc6aa7104ac4fa87f89ac6b8b1e783cc6e"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.32/ozk-linux-amd64.tar.gz"
      sha256 "87d3d58a688354b530ebc5e65f4155d4e9c60bca37aa4eefc02a6709df63a39d"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
