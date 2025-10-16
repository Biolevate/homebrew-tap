class OnizukaCliAT1040 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.40)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.40/ozk-darwin-arm64.tar.gz"
      sha256 "219568c6d51a4a89556eb2b07b2e5e533ceb789c5a4a001015f64438a45374ad"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.40/ozk-darwin-amd64.tar.gz"
      sha256 "d6d0f79d710226dd6f8e0aee1b0ac2263c276c21bb53a66bd0ad8d6e07b778f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.40/ozk-linux-arm64.tar.gz"
      sha256 "77284e61b78a0a255bc81e91fc0a5f673ffb3459e6d914014b4fe966e95c18c9"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.40/ozk-linux-amd64.tar.gz"
      sha256 "1ddfcb6ccbf94cd8c57902e5f99387a057611c374eaed64a85196c00c24ff8fd"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
