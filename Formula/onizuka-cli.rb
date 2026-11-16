class OnizukaCli < Formula
  desc "CLI tool for Biolevate operations"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.63/ozk-darwin-arm64.tar.gz"
      sha256 "2c2f0e2cbae20aee2714c6e877e24ee2b900d9dd7df7a990e3ff20b48a554241"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.63/ozk-darwin-amd64.tar.gz"
      sha256 "f189b94cf076f6f8597d9cfe85506008cf646e637d7e0fa495e22cbc02fa9d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.63/ozk-linux-arm64.tar.gz"
      sha256 "9c353b4fad6f13f4c1a59ab42925c6a692e27d8a165aab082576635c0ef631d9"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.63/ozk-linux-amd64.tar.gz"
      sha256 "c4967dd74060a31060ea5603983fe153c6ff57295aa4755aac879e8586716901"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end 
