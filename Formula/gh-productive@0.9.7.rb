# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class GhProductiveAT097 < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.7"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "c56477babbf8bd80ab982e5a7487ed2a77e90f611315fcb52d6e99f143b214a2"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "9df98d25903fa181eeefb6f1c72ecd758816521bc6b0e91e49de9017fd561485"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
