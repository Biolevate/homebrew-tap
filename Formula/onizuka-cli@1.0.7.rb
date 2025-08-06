class OnizukaCliAT107 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.7)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.7/gto-darwin-arm64.tar.gz"
      sha256 "cb1b20b9eb47052722be49e85aba60425bcf7521640f971f41b76878d7e51481"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.7/gto-darwin-amd64.tar.gz"
      sha256 "23866a8f10ec2c8bb46620d6e6e8c9183719294bf8ce3cf824cb5d2ce6c609b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.7/gto-linux-arm64.tar.gz"
      sha256 "78fd4142d97585f6a67a2e0c34626156afcf452a4791f93bb5ed71a6786c9381"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.7/gto-linux-amd64.tar.gz"
      sha256 "193eb6d21ff8c53abcb119875320510992cab37ad254157ba1c4593e1a4ee250"
    end
  end

  def install
    bin.install "gto"
  end

  test do
    system "#{bin}/gto", "--version"
  end
end
