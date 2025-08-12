class OnizukaCliAT1034 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.34)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.34/ozk-darwin-arm64.tar.gz"
      sha256 "ff8b127efe510c41dd1c92f339969d728f9a22ac18f16985ac3a4f27e0a719cc"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.34/ozk-darwin-amd64.tar.gz"
      sha256 "1b6638f1a330e7a830e117df785b6f0b92895e771429f9408daf3757be3ab42d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.34/ozk-linux-arm64.tar.gz"
      sha256 "fe3147fa6c0ae97b788bb8c7b8970ae68c8e1c3f3ce2b6fbfbe540f1b1e2da1f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.34/ozk-linux-amd64.tar.gz"
      sha256 "4ab0db1487cba036a54d7967b81928122b1418e57cb4643b956b26c6a02d8bad"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
