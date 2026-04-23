# frozen_string_literal: true

# This formula is auto-updated by the gh-productive release workflow.
# Do not manually edit the version or SHA fields.
class GhProductive < Formula
  desc "Productive TUI client for activity, preview, and task navigation"
  homepage "https://github.com/piqusy/gh-productive"
  version "0.9.2"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-arm64.tar.gz"
    sha256 "e6acf9caf947232b8e78315a7e2367ecd0878c3fcd6ff4c93356d9b3d988553b"
  end

  on_intel do
    url "https://github.com/piqusy/gh-productive/releases/download/v#{version}/gh-productive-darwin-amd64.tar.gz"
    sha256 "af19e5d687e1605767001297a4309d361bc5f4f70abd5bacfb38e1381de329d0"
  end

  def install
    binary = Hardware::CPU.arm? ? "gh-productive-darwin-arm64" : "gh-productive-darwin-amd64"
    bin.install binary => "gh-productive"
  end

  test do
    assert_match "gh-productive", shell_output("#{bin}/gh-productive --help")
  end
end
