# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class GhProductiveAT095 < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.5"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "c8da107619a1fd6748d32587b017dbc92772ab41b75656681e13b660a68c2de3"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "c666b49dd39221fd6c9dfa118aefe9e3c26aaa1ba3b4ba0500c9d60af5c224d7"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
