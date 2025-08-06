class OnizukaCliAT1011 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.11)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.11/ozk-darwin-arm64.tar.gz"
      sha256 "6dd268b71e533a9fef74094e188094ef2e6674690ea870e7fc0013323f82848b"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.11/ozk-darwin-amd64.tar.gz"
      sha256 "8b58d9f14441f0bcc60a5c2df69b7b798f14ba5286706dced5f4fbfecff20729"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.11/ozk-linux-arm64.tar.gz"
      sha256 "5db591d31138a4ccff39fb48f8f62b108dbf5fdd0445ec6e7232f1e32be28743"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.11/ozk-linux-amd64.tar.gz"
      sha256 "78a5c4ae907441235812efcefa1df45eb2bc5bde4602055c08d8872684fd9d9a"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
