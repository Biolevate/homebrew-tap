class OnizukaCliAT1050 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.50)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.50"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.50/ozk-darwin-arm64.tar.gz"
      sha256 "fbd584be1794737c980d63710fb1c252b7f0abc13727a8d4e0ff69f8d53743f6"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.50/ozk-darwin-amd64.tar.gz"
      sha256 "e68e23d2897b109edc55e5dbcb2fec0b982df7d6edc723f6a5e6502c761b5ef5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.50/ozk-linux-arm64.tar.gz"
      sha256 "8b6822cf9b5da90ffeb2e8baf0c4cd784927fce81264710a3227f53ee67a9c68"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.50/ozk-linux-amd64.tar.gz"
      sha256 "208c95fc3aa66ab12a6c84d523048d63986342d982c6c703696814f68a5dc5a7"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
