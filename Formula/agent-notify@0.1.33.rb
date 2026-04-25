# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0133 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.33"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "63ca9ea6e39c9da0b2e7dd2d26ceca371f75c216e36048aab41a87e3d5c391a1"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "a1d365dcc929c886c6b8431e0692f7e2d8640dc33d373d0e540f1aec2b9fa6e7"
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
