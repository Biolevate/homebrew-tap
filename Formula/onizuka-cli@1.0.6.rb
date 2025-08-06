class OnizukaCliAT106 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.6)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.6/gto-darwin-arm64.tar.gz"
      sha256 "0a6e8c016fb943aac269f8bf3f778c9d13d5f01e878f43b3d33a68be224b4e3a"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.6/gto-darwin-amd64.tar.gz"
      sha256 "a21c16bf4d178c0e36abcdc00a8b1dc532bdbfe72e2911c344f0fc67a5bc4c6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.6/gto-linux-arm64.tar.gz"
      sha256 "0a82934aea668fc40fbafadb154340581ba7ccd98b42fdd5166c423765d8bd6d"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.6/gto-linux-amd64.tar.gz"
      sha256 "3d9178bb2b275cb1cb424d0330b32d56a086762732e4bcea9cc4a88bd34f4096"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
