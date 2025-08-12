class OnizukaCliAT1033 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.33)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.33/ozk-darwin-arm64.tar.gz"
      sha256 "dc27f3d849c4921163f93e4b633acb97e89925ef4f6fa2a0ec4cdccc5793ae12"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.33/ozk-darwin-amd64.tar.gz"
      sha256 "817cccb5ab1fc174905ac73cb5cecdcee8a891fb1115e264cb1853ced0f2ed85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.33/ozk-linux-arm64.tar.gz"
      sha256 "de7bd5f1a379fa379b5d411415aeb7a2243957bdc46abc7aba98c12f71e4d226"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.33/ozk-linux-amd64.tar.gz"
      sha256 "cc0bba4808b5d8f296db3519211e3a7a29eaba4ebd6f5d6a13217d215a6c56c8"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
