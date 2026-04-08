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
    sha256 "478e60f412f03938853179f79dfb5928ca5b1e71266b3ef96d973042c9a0e261"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "a3f87a821fe18a1eaacc7796ca16d41c0a5f6e47a178edef5b50ff6fe80f29a4"
  end

  def install
    binary = Hardware::CPU.arm? ? "agent-notify-darwin-arm64" : "agent-notify-darwin-x64"
    bin.install binary => "agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
