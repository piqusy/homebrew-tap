# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class GhProductiveAT096 < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.6"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "069967651d656d7cae574fad89188dc311f67fbdb06ff0a4ff1a3d75bae3b59f"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "1931fd582a91c530c5aa3c078da9f1dfb8a07bad105128b26eb27922ccefa98e"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
