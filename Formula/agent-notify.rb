# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode, Pi)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.2.22"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "10f09375c61b7f00f23c96d010a823e930dda52e78ca2edf333f616def2d8169"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "856595a70bd13140f32bcfcf3ce943973e674062168687ba14693c1f0523a4e6"
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
