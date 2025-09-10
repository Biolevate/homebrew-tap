class OnizukaCliAT1038 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.38)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.38/ozk-darwin-arm64.tar.gz"
      sha256 "03df253f45b039e9c413ee12893190ae1dc79fb222c9de7b33348bea05834374"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.38/ozk-darwin-amd64.tar.gz"
      sha256 "53cce5a6e040718048da6f42a0c0d625370274b5f3223a5194571746cafbfd72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.38/ozk-linux-arm64.tar.gz"
      sha256 "e0a2d831651848e479251b20d63805dfbb6d5a2ec28b98303263567515d62010"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.38/ozk-linux-amd64.tar.gz"
      sha256 "42abb9b4b381ab0ed4d5ca5bce66c4611a3255e8df7934cc075479fc59827251"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
