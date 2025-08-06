class OnizukaCliAT109 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.9)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.9/ozk-darwin-arm64.tar.gz"
      sha256 "c49eed1be16673ebd1537c8c7fed534b041fbf7d2ea2349af65a8de2cdae1847"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.9/ozk-darwin-amd64.tar.gz"
      sha256 "989265b2fd77fa8bfa7dfd6bb888cc3f0e87f48b3a6d56276a88d263ab0e2bda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.9/ozk-linux-arm64.tar.gz"
      sha256 "7f11bf19eb92bfd72a7996ad18d52d8360cbdf31f9088aaaa07d9775867ff713"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.9/ozk-linux-amd64.tar.gz"
      sha256 "5eb852bdb1bf12f08104cb63c564c2595c4024bb7e65b21c98145215e65b6c83"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
