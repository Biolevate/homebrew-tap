class OnizukaCliAT1027 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.27)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.27/ozk-darwin-arm64.tar.gz"
      sha256 "55fb908ca7897738ef53bdafd647acb5f0da9ac31d613ee846b130a98016b00d"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.27/ozk-darwin-amd64.tar.gz"
      sha256 "88181fd87ad5a1990b3b76390f5723fb73d79b5ae9c6831cd4b1cbd18243d691"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.27/ozk-linux-arm64.tar.gz"
      sha256 "bc901d14273ff535ec735f5ce294d4f81c58ab93ccbf1999367d83b9f69f7459"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.27/ozk-linux-amd64.tar.gz"
      sha256 "33759808c2c9ce00d86d53f4d3d587a543d71d5761ea3fc6d8a5391858806d79"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
