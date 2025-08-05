class OnizukaCliAT102 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.2)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.2/gto-darwin-arm64.tar.gz"
      sha256 "61c0b5d9872476bbdf7a5728241b93feeb231d736b0ee559f077622553f3e428"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.2/gto-darwin-amd64.tar.gz"
      sha256 "253f3048e00a2e6a8934ac1a0026127e34f43f7012d5dd3a320005aba7f35831"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.2/gto-linux-arm64.tar.gz"
      sha256 "74a27f1953797fa24d965674509acf1d4965f6b71207a0b5a80f3adcfaa58306"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.2/gto-linux-amd64.tar.gz"
      sha256 "fbc7e3f68f2e7d8dc0f434208ed487701abeb3af7491131d8efba8a9e3690116"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
