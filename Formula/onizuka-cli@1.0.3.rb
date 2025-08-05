class OnizukaCliAT103 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.3)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.3/gto-darwin-arm64.tar.gz"
      sha256 "6cf6f65c93290fa15df3daeb6b730207c907e3e3613d4e655b2980d74103e087"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.3/gto-darwin-amd64.tar.gz"
      sha256 "19876fd61992686813bc9bf22f0f40c1f95a46831d30aa7cc9a5b65fdf46e786"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.3/gto-linux-arm64.tar.gz"
      sha256 "d83706df95c4a1accc84ed9d00392add8ce00c60f2eb6cea760438ecdc7dbf51"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.3/gto-linux-amd64.tar.gz"
      sha256 "6a9c7468e61a7b34d98b353343c098ab9435087e51bc3a3346e0d1378cd1756a"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
