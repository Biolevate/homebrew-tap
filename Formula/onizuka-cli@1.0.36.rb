class OnizukaCliAT1036 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.36)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.36/ozk-darwin-arm64.tar.gz"
      sha256 "6d87d0935b2cb02e325d521e600ac98071a003f2ad8c35789493e2b078c44722"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.36/ozk-darwin-amd64.tar.gz"
      sha256 "2e93219cd6ca320a31d0e60af43a2915beb631a8f6e9641d321635564c72676d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.36/ozk-linux-arm64.tar.gz"
      sha256 "a0c3badd1cbbfe62459d3d1098e647b19f6c0ab0b062a95192a35461da9b0790"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.36/ozk-linux-amd64.tar.gz"
      sha256 "2f1e66a8b3180d45454f89fbb58cf603e6ddd5c242a83eb0d0c8c02cc9c6679e"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
