class OnizukaCliAT1016 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.16)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.16/ozk-darwin-arm64.tar.gz"
      sha256 "8ecc2025517cc67b3ab752e04921984dd46e5d4fc69634d6151833efb08b5b05"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.16/ozk-darwin-amd64.tar.gz"
      sha256 "341aed917efe05edd1289b331afa3f6727cf568ef4c663047ba427fe300a8cfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.16/ozk-linux-arm64.tar.gz"
      sha256 "75133aa112d9f2b99396db866c91edbc50c8ecd25060f4603157ad3b13cfffac"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.16/ozk-linux-amd64.tar.gz"
      sha256 "ee82934b2d23db15bc67db41c52ac9b79cc7ca80963143a53a16adfa6c94e082"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
