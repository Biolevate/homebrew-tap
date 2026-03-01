class OnizukaCliAT1045 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.45)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.45"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.45/ozk-darwin-arm64.tar.gz"
      sha256 "a19651dee4f5239f8e099fb04f651374c3dda82da790df38ebf211dc98bc2ffa"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.45/ozk-darwin-amd64.tar.gz"
      sha256 "495fbac87150899724ef8afa62ebbb1b33ecc22a44df1aaad1b71ce2196cc9aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.45/ozk-linux-arm64.tar.gz"
      sha256 "84dc63125af81a4236ae2c284589623d6cf8a146182fc9e36f739b4f909a3344"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.45/ozk-linux-amd64.tar.gz"
      sha256 "2f0c5e3db3f5c23a099ccf43ab988aaed087f28224268a62b3b3a5721ba84c65"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
