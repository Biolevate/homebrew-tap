class OnizukaCliAT1013 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.13)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.13/ozk-darwin-arm64.tar.gz"
      sha256 "9c588f4c1f151ddec93bceab92f8b38e48502736eaf7fd59fc40722ca4b7946f"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.13/ozk-darwin-amd64.tar.gz"
      sha256 "2273650125600acaa2087285cf79414abde7fb6b82e941eafe6799e94282ce58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.13/ozk-linux-arm64.tar.gz"
      sha256 "07987b457b72849283233ca20f0153ad274c7e4a736ffc359e23ebb155868721"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.13/ozk-linux-amd64.tar.gz"
      sha256 "d942ebc402a24d4eaadcd222b79ad43e7e5ecdbdf1245a907567d12c11d55ef8"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
