# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class GhProductiveAT098 < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.8"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "ee4c0385e3ff6acf1c2597722f03dfb8855acdadd7e06699d58033b68b503ef7"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "451e4a41ed1b7c1be85dec9afa4664bade3231d52b1cd87109ff76c9c5e653a4"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
