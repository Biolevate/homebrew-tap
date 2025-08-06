class OnizukaCliAT108 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.8)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/gto-darwin-arm64.tar.gz"
      sha256 "31163b60a897f3b4eaa2d22a8c6f6ab6ef55ba579dbfbf6639334d36c795df82"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/gto-darwin-amd64.tar.gz"
      sha256 "a45536c918bcb1228c0a04acf75900598b186636198869ae0d0d699a0bc829b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/gto-linux-arm64.tar.gz"
      sha256 "23d44194d384b5dd468dfdc63b1fa37f672d01d9046bcf9e9824134875cc4b60"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.8/gto-linux-amd64.tar.gz"
      sha256 "52a2fb0e19986916e1807582585b17afa1dc680dac7dd61353b8d975f9f8787b"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
