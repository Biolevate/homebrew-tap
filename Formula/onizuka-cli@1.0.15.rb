class OnizukaCliAT1015 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.15)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.15/ozk-darwin-arm64.tar.gz"
      sha256 "72ee66b398b56d1fad89859158f1b60277aa51504170490a9261756e3ffaad77"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.15/ozk-darwin-amd64.tar.gz"
      sha256 "bcbb8518edabfd5a2f315fe818df250c8f0859d2d88a7db87f88350c32ca8112"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.15/ozk-linux-arm64.tar.gz"
      sha256 "f0f1710cbce8543a293e2a3d7f973993a8e2253e39195538816752c621468e97"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.15/ozk-linux-amd64.tar.gz"
      sha256 "d7d92d61182640b9773da3642e3c4b37487070843af24edfdff62eea1d0ddf9c"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
