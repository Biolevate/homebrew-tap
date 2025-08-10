class OnizukaCliAT1029 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.29)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.29/ozk-darwin-arm64.tar.gz"
      sha256 "893a24ca0e313299a4c676b1f3ac20c519db66aa35f7b010698d23f27524a36c"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.29/ozk-darwin-amd64.tar.gz"
      sha256 "affae4e2cf5ddeb247e6e9200861b2491001cf8da45e54e0598f44816869d576"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.29/ozk-linux-arm64.tar.gz"
      sha256 "c64cf518465eebed3fdedd2f91ebfb35fa9161592a0723f15c0c7216a071647c"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.29/ozk-linux-amd64.tar.gz"
      sha256 "3d067dbca923030d8234f5183fcd1d85a097479fcffa4b4f0563fd806b71c749"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
