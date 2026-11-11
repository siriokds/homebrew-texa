class Texa < Formula
  desc "Small text editor for the terminal, in the spirit of nano and vim"
  homepage "https://github.com/siriokds/homebrew-texa"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  # The program already built: nothing is compiled on install. The Linux archive
  # will join the macOS one.
  on_macos do
    on_arm do
      url "https://github.com/siriokds/homebrew-texa/releases/download/v0.1.0/texa-0.1.0-macos-arm64.tar.gz"
      sha256 "cad5a555ea049ae375d7ec3fc08cbb23214c4e21b4491fb14664de91b0ca69a6"
    end
  end

  def install
    bin.install "texa"
    doc.install "CREDITS.md"
  end

  test do
    assert_match "texa #{version}", shell_output("#{bin}/texa --version")
  end
end
