# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.4"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "59062dabe3d8661a3f9aa34f3b2751440ed6f414c5142d955350c458a25b6f06"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "88899265a198b24b67236c78e518738f0e74351673913118bbad6bf96213c22d"
  end

  def install
    binary = Hardware::CPU.arm? ? "agent-notify-darwin-arm64" : "agent-notify-darwin-x64"
    bin.install binary => "agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
