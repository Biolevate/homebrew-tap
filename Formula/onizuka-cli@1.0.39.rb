class OnizukaCliAT1039 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.39)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.39/ozk-darwin-arm64.tar.gz"
      sha256 "1299d115697fba374523b1158f851adfae1271be7ba1f0ce42038f4c0a8a4cb8"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.39/ozk-darwin-amd64.tar.gz"
      sha256 "537df5c2a853ddd7bfe4ee1de1428f3c5f441239067dde42832840b3246a962e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.39/ozk-linux-arm64.tar.gz"
      sha256 "77b33480910c66b88ec4495a25f251dbdee55600f5416dd18fd956d626bc8901"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.39/ozk-linux-amd64.tar.gz"
      sha256 "7e6f1c65667cd8fe98480ce8125eee11e78f0363dd240daa73b7d71afcfd80b9"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
