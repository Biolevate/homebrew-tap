class OnizukaCliAT1044 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.44)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.44/ozk-darwin-arm64.tar.gz"
      sha256 "1ea84f71b1ef8aad10cbda3b045a5bd9b2ac31c48421471ee780f03ede1e201e"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.44/ozk-darwin-amd64.tar.gz"
      sha256 "84aa2f852822f9a8f6c57a7cd2631170c7a06c5844161deef242563f37cf7cf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.44/ozk-linux-arm64.tar.gz"
      sha256 "99ad8355b1f6cfbbc3bc6ed97a9401f4edaef7dc49ff7aab725ebb9fb81e181e"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.44/ozk-linux-amd64.tar.gz"
      sha256 "a347077f61e4546687ead2dbf3ea56fa4db2088e3d206ae80703dac1b5ef62d9"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
