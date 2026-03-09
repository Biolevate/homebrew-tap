class OnizukaCliAT1046 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.46)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.46/ozk-darwin-arm64.tar.gz"
      sha256 "4a9a697e1a0138d015580e660f78e59f82313d307d8fc1f17b69ba4ae8c9639f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.46/ozk-darwin-amd64.tar.gz"
      sha256 "4c44425ba189462921d2e006e6123aee79acdb6f66341e66249aea0fb9305cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.46/ozk-linux-arm64.tar.gz"
      sha256 "7b47757a1c10dfcaa81002d681da16290119c857e41fb68e0121d8e65a3ae903"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.46/ozk-linux-amd64.tar.gz"
      sha256 "2b158b67409bc9a50bae0329018cf680698d40c8253234a557bbe9a64148e7ab"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
