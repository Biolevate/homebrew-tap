class OnizukaCliAT1037 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.37)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.37/ozk-darwin-arm64.tar.gz"
      sha256 "406ee1c6f3d88d1944eb210b5203a656e7be4c0c43f9e2a3d36f94adbd1f3400"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.37/ozk-darwin-amd64.tar.gz"
      sha256 "2c58b4492b53becb6bb97653dea25b79c09dca56376dcaff9264a176143593dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.37/ozk-linux-arm64.tar.gz"
      sha256 "d0553fe1e3feb6c3ce011c64f8f6e73a40e7a14d0bbb19366bee24f3673feb00"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.37/ozk-linux-amd64.tar.gz"
      sha256 "1b0ed041a21635e74b165ebbbbf1bf8196c384f715c05c04df300a69e26819a6"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
