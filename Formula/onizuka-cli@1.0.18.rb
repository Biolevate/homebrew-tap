class OnizukaCliAT1018 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.18)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.18/ozk-darwin-arm64.tar.gz"
      sha256 "c461b34a59194a4ef31f7c02d0e75cc321a27806658a65a0313e1ce0f1dfbe87"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.18/ozk-darwin-amd64.tar.gz"
      sha256 "f7412b8627636a0314ac065b95e94a57a59ee94a4eb2a2777befcc1435ba1a94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.18/ozk-linux-arm64.tar.gz"
      sha256 "1833a630fea935d09aa90ce88fda460241a0f737fba940f40154859c71f25129"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.18/ozk-linux-amd64.tar.gz"
      sha256 "76f11c1e88e2745b2452257c318ceec5cebfa55ae2a230c19fd2260a921773a2"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
