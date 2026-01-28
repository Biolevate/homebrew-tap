class OnizukaCliAT1043 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.43)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.43/ozk-darwin-arm64.tar.gz"
      sha256 "bf69197609c3550ced0fb3e67a7abe874c167f134be513961ac5527776aaeb69"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.43/ozk-darwin-amd64.tar.gz"
      sha256 "d91f5b801cfbb8f1f9d871044025d0a78986512a4d013bb092c6d166b7a1d9df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.43/ozk-linux-arm64.tar.gz"
      sha256 "64046b92f344d84dd79423c4e6ad3cbd4c36d658e1f01de4f223f8d9c8113802"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.43/ozk-linux-amd64.tar.gz"
      sha256 "08c88b1b468e258bf01f7ac57ebf75f11baba89d4354f733b0a6d48e76c721c2"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
