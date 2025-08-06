class OnizukaCliAT105 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.5)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.5/gto-darwin-arm64.tar.gz"
      sha256 "6252073642972408dbead917935a82efc8935ef32d1b2dcf3302ac7e4aab1466"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.5/gto-darwin-amd64.tar.gz"
      sha256 "01d946ce8e3a37f81d80d760400684784008d5552103cb38747fb8d235e90935"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.5/gto-linux-arm64.tar.gz"
      sha256 "775d2ca526e7f9dde457b51d3c6ffd53479bccadd3dd9981e9ff682f1f425847"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.5/gto-linux-amd64.tar.gz"
      sha256 "5fd0376734aac30c95e6f174bdce21a612e07bd145b5416409f4762e465acf81"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
