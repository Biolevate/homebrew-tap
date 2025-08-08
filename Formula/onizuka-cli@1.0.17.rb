class OnizukaCliAT1017 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.17)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.17/ozk-darwin-arm64.tar.gz"
      sha256 "cdfa277cac199f2c3bbed6afcfba83ad8263b6e21c79811e5511d3c4b0ac33c6"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.17/ozk-darwin-amd64.tar.gz"
      sha256 "ddeb9726dc15a0d7d52d2b45c219fb9f1f949f259433cded70a3889f14731f4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.17/ozk-linux-arm64.tar.gz"
      sha256 "b99e1b637d4bb11fa50c01c7b448e030747c4843f615169e99e67d9612c7e279"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.17/ozk-linux-amd64.tar.gz"
      sha256 "56a197d3c761c75e9962404a4d92a07b7ce2027539f58c258f4c30da1639d52e"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
