class OnizukaCliAT1019 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.19)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.19/ozk-darwin-arm64.tar.gz"
      sha256 "c073b4d4decee6a515f47df5d8b2643da1c4e3c987d74126b36b5aff2bdbb3d7"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.19/ozk-darwin-amd64.tar.gz"
      sha256 "b5a9b16fa83b4517f4c8b620977b2e7198667923d7aeb234df7b02324689e9ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.19/ozk-linux-arm64.tar.gz"
      sha256 "94f29ebc4a3e61e5f669a8c0b5d737746f11c1fcacd0b91a2b2e83baca96d3eb"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.19/ozk-linux-amd64.tar.gz"
      sha256 "5d2ed6de92d9832d7de0d573c3a0c078be1669ab323d870b78582a1834ff85e1"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
