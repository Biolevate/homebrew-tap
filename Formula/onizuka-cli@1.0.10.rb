class OnizukaCliAT1010 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.10)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.10/ozk-darwin-arm64.tar.gz"
      sha256 "76d30ffe6a1ac7742c8fd0340b31a53e518aeaab529b556b197ef553d33e65e9"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.10/ozk-darwin-amd64.tar.gz"
      sha256 "93df3baa118528f029a67eaa1454fd4ea82dfdc53b3e7c58723d37ab06c59c60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.10/ozk-linux-arm64.tar.gz"
      sha256 "f4d3b8d85396ccfa52f4672163880c051695268e81b8a72adbb6ebff75db06af"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.10/ozk-linux-amd64.tar.gz"
      sha256 "8671acef46cf15d9fd71f5573cc70e3231034f8ca51aab83880b6d3b4bf4d640"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
