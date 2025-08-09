class OnizukaCliAT1028 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.28)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.28/ozk-darwin-arm64.tar.gz"
      sha256 "4d2ba0aeeb21e0a123cc42f461e0b73fe6a20411bd569d60e6c7926aa0f8b367"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.28/ozk-darwin-amd64.tar.gz"
      sha256 "8cba00ba5395a1690455c27cb2fe4bf7e0d354b13b4e697bae266ee58012bcd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.28/ozk-linux-arm64.tar.gz"
      sha256 "7f3d1b6ccd6e3bb935fcc567839e2f96af74deed0cc3fbc53a37023308d73d88"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.28/ozk-linux-amd64.tar.gz"
      sha256 "4f5d029820526bba07b7b0bbcfdb2c2676838b4c0d910d6f0815f6773a310dd3"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
