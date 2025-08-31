class OnizukaCliAT1035 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.35)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.35/ozk-darwin-arm64.tar.gz"
      sha256 "2b44ec64354845ad95adb6b657ad242b6191f8c8be8feef20b1b191a0d61d430"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.35/ozk-darwin-amd64.tar.gz"
      sha256 "14bdea16bd1f7beea0c76c6d1e2ce3d48f8f666f037d2cb81668bd5941e43f24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.35/ozk-linux-arm64.tar.gz"
      sha256 "b367118b3faf3bac373346b4502138c38edeebe36544a6f9cc79b3583315a336"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.35/ozk-linux-amd64.tar.gz"
      sha256 "224f6246535c003b2e8cc2107f20cb5f36939f5cc558cfd241ee4d7c56ace165"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
