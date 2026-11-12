class Texa < Formula
  desc "Small text editor for the terminal, in the spirit of nano and vim"
  homepage "https://github.com/siriokds/homebrew-texa"
  version "0.1.4"

  depends_on arch: :arm64
  depends_on :macos

  # The program already built: nothing is compiled on install. The Linux archive
  # will join the macOS one.
  on_macos do
    on_arm do
      url "https://github.com/siriokds/homebrew-texa/releases/download/v0.1.4/texa-0.1.4-macos-arm64.tar.gz"
      sha256 "bb86edacf08b586c6bb0ad9f5b7d18e670e6e862c43a34a990b2e73f4595c719"
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
