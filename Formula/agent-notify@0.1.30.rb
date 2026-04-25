# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0130 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.30"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "4935d483af0efcfe3d970b6fb75591b062dfdce7158ff4acd596e225107edf0e"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "996c901577ef0e40b98b015c88e85e1fe24fbbba3621f9476e32d30d5bde70a6"
  end

  def install
    bin.install "bin/agent-notify"
    libexec.install "opencode-agent-notify", "claude-code", "pi-coding-agent"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
