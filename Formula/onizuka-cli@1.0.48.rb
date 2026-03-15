class OnizukaCliAT1048 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.48)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.48/ozk-darwin-arm64.tar.gz"
      sha256 "97c8d8c70f8105feb7dfc044b9bc91dbc9f673a251a66dc3737058c78532b026"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.48/ozk-darwin-amd64.tar.gz"
      sha256 "54e3bf444385e447ff4699b65630e85d8c8e34945c6ddf6701744e0fdb2c06c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.48/ozk-linux-arm64.tar.gz"
      sha256 "7cb58a755e01a19f103b1deacf3b4f79ef05c70d71c0cd68f17cf06426e37fc1"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.48/ozk-linux-amd64.tar.gz"
      sha256 "89727ae671dae2eaf2d5074335a6c9254f0e99057566e130552bfee6c299b72a"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
