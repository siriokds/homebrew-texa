class Texa < Formula
  desc "Small text editor for the terminal, in the spirit of nano and vim"
  homepage "https://github.com/siriokds/homebrew-texa"
  version "0.1.2"

  depends_on arch: :arm64
  depends_on :macos

  # The program already built: nothing is compiled on install. The Linux archive
  # will join the macOS one.
  on_macos do
    on_arm do
      url "https://github.com/siriokds/homebrew-texa/releases/download/v0.1.2/texa-0.1.2-macos-arm64.tar.gz"
      sha256 "dd7542047f61d52b60c276f32517d956708690696fc286665948bee5755f5e9f"
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
