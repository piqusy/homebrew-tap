# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.30"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "09f44c6b457ade3616393ca75f05fc385a2b6730ccbe77a87cc671f2ab62462d"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "bd5bdd43bec5916d0a28fa11dceadd33e26a66532f4c0df13129088d764ec457"
  end

  def install
    bin.install "bin/agent-notify"
    libexec.install "opencode-agent-notify", "claude-code", "pi-coding-agent"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
