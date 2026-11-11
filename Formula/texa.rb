class Texa < Formula
  desc "Small text editor for the terminal, in the spirit of nano and vim"
  homepage "https://github.com/siriokds/homebrew-texa"
  version "0.1.1"

  depends_on arch: :arm64
  depends_on :macos

  # The program already built: nothing is compiled on install. The Linux archive
  # will join the macOS one.
  on_macos do
    on_arm do
      url "https://github.com/siriokds/homebrew-texa/releases/download/v0.1.1/texa-0.1.1-macos-arm64.tar.gz"
      sha256 "7285b653080249a4d36e71d2b82eba1e782b6abbfb2ad79d0757102fac406cdc"
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
