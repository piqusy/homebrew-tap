# frozen_string_literal: true

# This formula is a versioned release formula.
# Do not manually edit the version or SHA fields.
class AgentNotifyAT0128 < Formula
  desc "Desktop notifications for AI agents (Claude Code, OpenCode)"
  homepage "https://github.com/piqusy/agent-notify"
  version "0.1.28"
  license "MIT"

  on_arm do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-arm64.tar.gz"
    sha256 "d23317a49a38c129a20fead341d4b57bc43f84c0fef5e0f2214cc21c7ec349f8"
  end

  on_intel do
    url "https://github.com/piqusy/agent-notify/releases/download/v#{version}/agent-notify-darwin-x64.tar.gz"
    sha256 "ce053f81bbcb472329bba7f28a45dec104141631b8abea55bf99df4c80159e4c"
  end

  def install
    bin.install "bin/agent-notify"
    libexec.install "opencode-agent-notify"
  end

  test do
    assert_match "agent-notify", shell_output("#{bin}/agent-notify --help")
  end
end
