# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class GhProductiveAT093 < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.3"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "59bd5034cc82d82e4f4fb1f612c5837fb3f9bb77537b13ae8892e149a3a57341"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "c459385d0b2073befcfbe7e9f81b357662c2c40f7dc59cba46907a9e86255bd5"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
