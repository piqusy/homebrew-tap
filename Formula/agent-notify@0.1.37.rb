# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0137 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.37"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "b3011f0b2448bdcf725b939ddf78caeb434205606d379f8ada07717994885237"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "2ae032a56d898616daf4382a9027bb71defdcacf21f1f2bc59a2213a67052997"
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
