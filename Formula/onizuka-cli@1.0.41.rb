class OnizukaCliAT1041 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.41)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.41/ozk-darwin-arm64.tar.gz"
      sha256 "6e32a019566325c0af4738caa37c09efcd6c331103b70259231de52cd89e0553"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.41/ozk-darwin-amd64.tar.gz"
      sha256 "c90e539d88099d8feb71e6ee6ef014a816eb70587b9b6864e5c9fbc0609c751d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.41/ozk-linux-arm64.tar.gz"
      sha256 "573950594bc78f3732ec3e5ace7a9570e438e11be8a593d585f58a39a140ddeb"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.41/ozk-linux-amd64.tar.gz"
      sha256 "f4ffa5f22cd23fbbb79e50de14c04f4bfa450239a186b7df32d1535a977c2f85"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
