class OnizukaCliAT101 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.1)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.1/gto-darwin-arm64.tar.gz"
      sha256 "b412b06ba40e5ae5aac64c0c9346ea0fc58347f72cd4ec4f52e89b5c3c612237"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.1/gto-darwin-amd64.tar.gz"
      sha256 "b15f28f310191a01777e188cf1b40a6a1682a2bc7228721e61774f6ebf02d5b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.1/gto-linux-arm64.tar.gz"
      sha256 "8f936bf37f77f58aa682c432173d831d8192445db3e55c1bb1373d26a925eaa2"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.1/gto-linux-amd64.tar.gz"
      sha256 "5a5caec255eb46f0ffd3cf29db7056ed3150fe3d068318adf9cbf38746dde307"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
