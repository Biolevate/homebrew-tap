class OnizukaCliAT1061 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.61)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.61/ozk-darwin-arm64.tar.gz"
      sha256 "5c42fcb4bff547dfd2877a08fe17cdea7e2d34be78cd878ccfca2de50fb63084"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.61/ozk-darwin-amd64.tar.gz"
      sha256 "4c81a6bb913e1153c57c3a15445d30de61825ffa0f3683537f0164009f10c625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.61/ozk-linux-arm64.tar.gz"
      sha256 "481f36f6ba3d6320c43770169a37c2f0b6eb7240e36768573ff0e7fea0ac527b"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.61/ozk-linux-amd64.tar.gz"
      sha256 "c76d5b4ff088afde332e6970fcfe01265d72be320f0f7302a3f24ce055c4658e"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
