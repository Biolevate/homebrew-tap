class OnizukaCliAT1060 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.60)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.60/ozk-darwin-arm64.tar.gz"
      sha256 "7729a4ecf0b00db070c6671ba7ec360134e34e1194f9a542fcf3912aa5da4533"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.60/ozk-darwin-amd64.tar.gz"
      sha256 "73889dcfd34451568da5fcf5b7a16e2e7943e68980753f983ce62d92cc3decc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.60/ozk-linux-arm64.tar.gz"
      sha256 "5a3e5f59b87a1bf6404b240431464c02f587b77d7f91ae497695b2209406300c"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.60/ozk-linux-amd64.tar.gz"
      sha256 "f4ba13d91906e6ae19f8ed05a96522c501c86ecbf0affa3f63ac580df0dfabaf"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
