class OnizukaCli < Formula
  desc "CLI tool for Biolevate operations"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/ozk-darwin-arm64.tar.gz"
      sha256 "a664a6b5780e25e8dda46a5df562ae348754cc06c30978648a0047770da5d632"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/ozk-darwin-amd64.tar.gz"
      sha256 "9784d523595adb96e797296a974e6aa36221e7ddabe35aa1a5033783ffb153d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/ozk-linux-arm64.tar.gz"
      sha256 "ab280b65a48f2312c6ec4913d3128648280834a9c82526acdb02aad350f51269"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/ozk-linux-amd64.tar.gz"
      sha256 "a50bec981977a05d7dfd0c424f8bb89bdfeafd8dded6caf2fc9fd799173cd319"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end 
