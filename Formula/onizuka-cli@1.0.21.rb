class OnizukaCliAT1021 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.21)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.21/ozk-darwin-arm64.tar.gz"
      sha256 "bdcdb603646d733a8a90e1193db9720f96f743951a7d0a9789b24f790ceb1eb1"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.21/ozk-darwin-amd64.tar.gz"
      sha256 "e946a2bd61427c037b9dbeb4846ea8b9657297ad628ce367e505f984dacae417"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.21/ozk-linux-arm64.tar.gz"
      sha256 "d04f6f77452bfeb5c74d79e293244345171fde6985f48f4b0c141f69649828c3"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.21/ozk-linux-amd64.tar.gz"
      sha256 "77379aba35efcebf4a67500fbd596246fc03d9ab85eac7fa11504a6a9465f22f"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
