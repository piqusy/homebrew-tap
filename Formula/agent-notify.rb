# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "d1e327b616a3ecdad06988652305ef62b9f223c6efe3df9c15892a56f8e20ac5"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "b7db51971ae470485f60ea27b2110f06da0c6ae82278d37344405577ffaf91d7"
  end

  def install
    binary = Hardware::CPU.arm? ? "agent-notify-darwin-arm64" : "agent-notify-darwin-x64"
    bin.install binary => "agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
