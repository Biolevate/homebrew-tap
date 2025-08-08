class OnizukaCliAT1024 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.24)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.24/ozk-darwin-arm64.tar.gz"
      sha256 "bcd29544ede74cadfae9b2b5d1ad3a9fd24c45f98c32590da0dc3a0fbbf5e341"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.24/ozk-darwin-amd64.tar.gz"
      sha256 "7ed484709b50b23588f383f0e537106b2a34c9306d728226dde241aa482b35ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.24/ozk-linux-arm64.tar.gz"
      sha256 "76826a571ba2f2acb09a4f05fc77eef70167886591b61572ac5e3de9ea2785d5"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.24/ozk-linux-amd64.tar.gz"
      sha256 "81d60ba0892b4c41f409e87e92cb89b4fb6f791987a60065bd745b66448dc167"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
