class OnizukaCliAT1023 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.23)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.23/ozk-darwin-arm64.tar.gz"
      sha256 "3b507f87403c3ca244a6f4e2d48a547907960b8be23d11d4bfe2701611d07cf1"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.23/ozk-darwin-amd64.tar.gz"
      sha256 "50b1cbaba9097c0004d609273fef46e40ce8a0643c889397d932c2b227b8b96e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.23/ozk-linux-arm64.tar.gz"
      sha256 "2e10f7ffaf26a18f8cbb473a587a67b6057807bae8c05c2864597c6b31bebe16"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.23/ozk-linux-amd64.tar.gz"
      sha256 "42ca4cbbed6876669da95a81d636a4b7a2ab6035a6ff50033b129ade66e1e8c7"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
