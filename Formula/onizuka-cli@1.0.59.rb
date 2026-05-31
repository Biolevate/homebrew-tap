class OnizukaCliAT1059 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.59)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.59/ozk-darwin-arm64.tar.gz"
      sha256 "87cf3ee860692df53f13059bb6f016baf00909a2a5e7e64d51c39b8f2ce050f2"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.59/ozk-darwin-amd64.tar.gz"
      sha256 "86996b9a59471ba87c661313e1ceba3d82f016c4634c1543d9de55e56199c59a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.59/ozk-linux-arm64.tar.gz"
      sha256 "811d69ac4f681608b17c11e5941fc6dcd329a0787b35a5994e303a7d8e0cd6bc"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.59/ozk-linux-amd64.tar.gz"
      sha256 "d7fbb402b0fb61112f5a269b58481754744ba7634ea38d610de5d3f847ded8a2"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
