class OnizukaCliAT1042 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.42)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.42"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.42/ozk-darwin-arm64.tar.gz"
      sha256 "3f82bd1aa1eaa0afbc570f17d6993b18751d9778e25d8cbbc28110235676f1bf"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.42/ozk-darwin-amd64.tar.gz"
      sha256 "f3e6757d812f8e44dc32e2e3e35ec57a1e53b4df8b37d9f2afe750a08f3ef1a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.42/ozk-linux-arm64.tar.gz"
      sha256 "f37d6a7e6d4579ac0c675447a05b443c19161572154dbfb40ccc530862ef4679"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.42/ozk-linux-amd64.tar.gz"
      sha256 "fe94251dc1749d78477b688c8b92cfe6e2904cf7914a49da63221a394fdfb218"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
