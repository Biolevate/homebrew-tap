class OnizukaCliAT1014 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.14)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.14/ozk-darwin-arm64.tar.gz"
      sha256 "622662904591047b6713994585a9d75ceb13cc638170ffa005205821079a8d55"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.14/ozk-darwin-amd64.tar.gz"
      sha256 "b42bfb1b97ff366442a9f97a496e6be9da8388c16f052ef726d51cb2e803ee58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.14/ozk-linux-arm64.tar.gz"
      sha256 "e16d245fb8e4615f6efdcaad0cfd89b49759537c3b206fa515be65283f229c10"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.14/ozk-linux-amd64.tar.gz"
      sha256 "9d76782f06f6bf7a23b2838ad70eba03127e393f35c9687f8282fc04cf828479"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
