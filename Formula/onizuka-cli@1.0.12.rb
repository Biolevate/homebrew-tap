class OnizukaCliAT1012 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.12)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.12/ozk-darwin-arm64.tar.gz"
      sha256 "78ec3fd6d8463b9b00623d7e5b6afa5b709a7d1aa8329217045a5707b22ade38"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.12/ozk-darwin-amd64.tar.gz"
      sha256 "1c668821eb398958e423e442bb0fd638ca9fe02b32818866a69c587cc91c6d6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.12/ozk-linux-arm64.tar.gz"
      sha256 "2925cbd86a0969e640128eab4aa272f910d5a2620a3c7649fb5dfce26f5fdf3e"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.12/ozk-linux-amd64.tar.gz"
      sha256 "ab89ac43f91a13322eb3f2de692be37d645d3b4215fe7fc403b4124215dc1724"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
