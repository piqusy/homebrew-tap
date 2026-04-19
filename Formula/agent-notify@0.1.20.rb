# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0120 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.20"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "94549e32838d73d2afce1cf7d7ceccd8c01164b138ea8fa2e48beb21e560199c"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "488d5d3681db880ae197377f76fdad3871f1eb56a9e136a5b76a04239e2dc194"
  end

  def install
    bin.install "bin/agent-notify"
    libexec.install "opencode-agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
