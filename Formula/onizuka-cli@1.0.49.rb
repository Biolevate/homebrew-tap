class OnizukaCliAT1049 < Formula
  desc "CLI tool for Biolevate operations (version 1.0.49)"
  homepage "https://github.com/Biolevate/biolevops-onizuka"
  version "1.0.49"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.49/ozk-darwin-arm64.tar.gz"
      sha256 "10ab17d63462540a1ef5c615dcf01628a4b8fce23b3cd1919e201abee6a4ce61"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.49/ozk-darwin-amd64.tar.gz"
      sha256 "10b079cee7b559bdcaf2e57c704e14a8d09af817f856ca5e555f8e0a754783e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.49/ozk-linux-arm64.tar.gz"
      sha256 "7e11f2472d154c44dbc87b009286177658649c4d10f424463945c47c2e4315c8"
    else
      url "https://github.com/Biolevate/homebrew-tap/releases/download/cli-v1.0.49/ozk-linux-amd64.tar.gz"
      sha256 "192f28884f7a002eaa4a33654fc84742f7acee91f7df700b5c70f16893edf941"
    end
  end

  def install
    bin.install "ozk"
  end

  test do
    system "#{bin}/ozk", "--version"
  end
end
