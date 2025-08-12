class OnizukaCliAT1030 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.30)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.30/ozk-darwin-arm64.tar.gz"
      sha256 "fb5b10d68a26531b12abb39b425454d22591f882fd8153b7fb9cca73d51c3c11"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.30/ozk-darwin-amd64.tar.gz"
      sha256 "96fbca68e8cf32849546c7626abf869b1c06ed191720db70547fe129de5e7cd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.30/ozk-linux-arm64.tar.gz"
      sha256 "b5c9a2cea9a4eeaf6ca492c9a5b1b8fb0fe293826e9bdb42cc492b6d83255d7f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.30/ozk-linux-amd64.tar.gz"
      sha256 "759b01a5509e57acfeb8dac807cb4ef335e544ea788f045afa8726b07f0c917d"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
