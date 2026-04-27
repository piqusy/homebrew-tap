# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0144 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.44"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "73cd7a3651f3e3402f06aa015f662143e957bbd039a161f4844015e28bf43f25"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "cddcc55961e5f71ffffc4641e8340bcf662726d7e4238b05206b767a1495bee4"
  end

  def install
    bin.install "bin/agent-notify"
    # AgentNotify.app is already signed in the release artifact.
    # Preserve that signature so macOS notification permissions stay tied to a stable app identity.
    libexec.install "opencode-agent-notify", "claude-code", "pi-coding-agent", "agent-notify-helper"

    helper_binary = libexec/"agent-notify-helper/AgentNotify.app/Contents/MacOS/AgentNotify"
    chmod 0755, helper_binary if helper_binary.exist?
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
