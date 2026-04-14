# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentNotify < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.14"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "80d2efe1b0878ad716527072fd27d1dd24376aebedb5741d38e9858a6d97e2f6"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "7ae7f3f40d0c6d2f8d5abd03e4d91580b6a05836f541002f5e69f0c7b4676bc0"
  end

  def install
    binary = Hardware::CPU.arm? ? "agent-notify-darwin-arm64" : "agent-notify-darwin-x64"
    bin.install binary => "agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
