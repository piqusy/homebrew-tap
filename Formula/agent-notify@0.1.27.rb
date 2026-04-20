# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0127 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.27"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "79cb4292f4f6147fdb72586f4087d63778bb8f572fd742d1d8bd873dce70be48"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "c02fcc1cd683388739ff4e3db6c0485cdc5b1c49c9f9a8978f991adf02dffcc8"
  end

  def install
    bin.install "bin/agent-notify"
    libexec.install "opencode-agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
