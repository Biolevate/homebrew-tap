class OnizukaCliAT1047 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.47)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.47"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.47/ozk-darwin-arm64.tar.gz"
      sha256 "5e62658c3432435d52d1ea34276bc9d6265b2fcbeeb60924602fc73854d7cda0"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.47/ozk-darwin-amd64.tar.gz"
      sha256 "5e20ce3d89aa8a2435cc944b046291622d1f2ad38337cf0e233b6f3188449c7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.47/ozk-linux-arm64.tar.gz"
      sha256 "ff35a885afe58142ea34df5a1cc35ce9ccb3277b51172e04cd760f17e56312fc"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.47/ozk-linux-amd64.tar.gz"
      sha256 "e9560c1cbec45fbcba849d9b469ebdbb8c12ea1382de324c2464df6570a1c4ac"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
