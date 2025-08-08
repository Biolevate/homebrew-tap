class OnizukaCliAT1022 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.22)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.22/ozk-darwin-arm64.tar.gz"
      sha256 "b8fc12b5b7d56134973b7c0d02b54ee3746757ad55749c6b43395e0e10c02af7"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.22/ozk-darwin-amd64.tar.gz"
      sha256 "df3dcd166a53a921224183345e43ad4d2a1bc8b3c3a3f99361fc51a759626d9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.22/ozk-linux-arm64.tar.gz"
      sha256 "d1d1ea4903827e82f54fd375251ac50af29adcf35d2bb8c4f01d0c0daecd358a"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.22/ozk-linux-amd64.tar.gz"
      sha256 "ce64e3763505e677e634c84553b9f626c6a887c4025e4591381cb7ac7fa5f923"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
