class OnizukaCliAT1051 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.51)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.51/ozk-darwin-arm64.tar.gz"
      sha256 "ecb2306895947ceb0f8f7e274100ba1ca454cfb63697e28c48ff43998e7c3a01"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.51/ozk-darwin-amd64.tar.gz"
      sha256 "7d09c37b405c5576491cd697d63f6d3231f8adf85e0f54da2e6212825741213a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.51/ozk-linux-arm64.tar.gz"
      sha256 "012af756a03d2399ae2a25a07b31079372e8a1a11d82cdd8c55361d7cc69fc2c"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.51/ozk-linux-amd64.tar.gz"
      sha256 "5547759b4435e5667f592e43686f60e0b7d083338ddf942006349b326e909c3a"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
