class OnizukaCliAT1025 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.25)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.25/ozk-darwin-arm64.tar.gz"
      sha256 "d1a3c188181ff4e6dab285a7f96d4526f902ba8dd14d1af5e6286cc9b486723f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.25/ozk-darwin-amd64.tar.gz"
      sha256 "88992ee63eb72c58686c1651cb280bc20d9f634902f28512edfea26b0903ea47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.25/ozk-linux-arm64.tar.gz"
      sha256 "14f2330327b1b593d8c322fed10f63d64d901ab08f706e693244046019cab27b"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.25/ozk-linux-amd64.tar.gz"
      sha256 "e0bc27067a1d9417487eba248cd4f11a0acec943489bbc81c1a7f4f4840975c8"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
