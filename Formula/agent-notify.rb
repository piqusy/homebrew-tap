# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.9"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "6bf222b2428b1b63b630d67609cf1dca7cbc4e27eb2499ced42f482cfc0b1803"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "112c9708d949e6a05a7051b77291687ab71442b719f744f1acab057bbdfbb3c9"
  end

  def install
    binary = Hardware::CPU.arm? ? "agent-notify-darwin-arm64" : "agent-notify-darwin-x64"
    bin.install binary => "agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
