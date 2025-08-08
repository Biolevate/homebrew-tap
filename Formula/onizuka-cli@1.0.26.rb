class OnizukaCliAT1026 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.26)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.26/ozk-darwin-arm64.tar.gz"
      sha256 "6b8f18fc80b06909d338eed26428da20f3ffe6ec4c764946c4d5bf34571ba03e"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.26/ozk-darwin-amd64.tar.gz"
      sha256 "461ffe477025feef4746009a429360304aaebb50aebb1254ccc96d3498a2d8a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.26/ozk-linux-arm64.tar.gz"
      sha256 "c36667ff4794536ffabdb8abbb6d4eefd369c1faf706d7f729ab68ccaf3ea183"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.26/ozk-linux-amd64.tar.gz"
      sha256 "43960553c75c4bb188204c0d89dbf96495b376d5e12c14881f31b165f4860852"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
