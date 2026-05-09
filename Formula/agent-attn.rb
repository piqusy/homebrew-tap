# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class AgentAttn < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/agent-attention"
  version "0.1.0"

  on_arm do
    url "https://github.com/piqusy/agent-attention/releases/download/v#{version}/agent-attn-darwin-arm64.tar.gz"
    sha256 "c0df55af37aa86f7e200257af500e4c6b893a879569fc9b4881adea70128bb11"
  end

  on_intel do
    url "https://github.com/piqusy/agent-attention/releases/download/v#{version}/agent-attn-darwin-x64.tar.gz"
    sha256 "1b30fd40658aef7f22a795d9abdfafff747536767fe83b09b9b4713a1e7dd8a9"
  end

  def install
    bin.install "bin/agent-attn", "bin/agent-attn-event"
    libexec.install "integrations"
    pkgshare.install "README.md", "CHANGELOG.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-attn --version")
    assert_match version.to_s, shell_output("#{bin}/agent-attn-event --version")
  end
end
