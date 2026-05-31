class OnizukaCliAT1058 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.58)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.58/ozk-darwin-arm64.tar.gz"
      sha256 "1b46955edfd64752936f0702a5b7e10f01fbab183dcdd35d5456abdddc7b1538"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.58/ozk-darwin-amd64.tar.gz"
      sha256 "2958b4ef00d9561a25bbee6e083412c6d8b69bfc4976e40b7a29799b71adb2e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.58/ozk-linux-arm64.tar.gz"
      sha256 "495619adf6b214f3ed0b034cfabc48ea178b45aa6031b47430ee5edfde720889"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.58/ozk-linux-amd64.tar.gz"
      sha256 "d62eee540f008feaae423edc19f9c3569e045fa5e3a899e54b3ba09c2d41d38a"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
