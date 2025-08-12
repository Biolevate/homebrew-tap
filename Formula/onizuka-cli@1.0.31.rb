class OnizukaCliAT1031 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.31)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.31/ozk-darwin-arm64.tar.gz"
      sha256 "81bfc3a7e29ba5843547d0e9f7ec62ec71c6163e2a024934abb8f1a82e1a27cd"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.31/ozk-darwin-amd64.tar.gz"
      sha256 "c4f85e1b8d6b9b98effbbc5a6cde41e282e5beeccfd8caf1436f14eefe9f16ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.31/ozk-linux-arm64.tar.gz"
      sha256 "6411f1ba279a812cb0a912a5fb3a2672be22d62b67f619d98bd3f27cd2260b30"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.31/ozk-linux-amd64.tar.gz"
      sha256 "ecef068a620f4855d1e69c34e497f608fd4cc60d4a0baef3e2216a3d0e43b01d"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
