# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0131 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.31"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "de13b2fb37d3ddef780b47c32ddd1f9b724c83bd1b038b950d0e31d4d09eb26a"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "3f023d0aed82e91978b1e0b6df982d60853564bd69a5615ba9e1330a56a8f6ef"
  end

  def install
    bin.install "bin/agent-notify"
    # AgentNotify.app is already signed in the release artifact.
    # Preserve that signature so macOS notification permissions stay tied to a stable app identity.
    libexec.install "opencode-agent-notify", "claude-code", "pi-coding-agent", "agent-notify-helper"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
