# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class Observaitory < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/observaitory"
  version "0.6.0"

  on_arm do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-arm64.tar.gz"
    sha256 "b5db4e9c89c2aa6500371f2ca7fa2b6789706d5c2d5ab21431c9a3bae010372b"
  end

  on_intel do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-x64.tar.gz"
    sha256 "254cdac1260641c299ab7012c8fd2a6284ad838fc91a5e1cf15f75faccbf3d88"
  end

  def install
    bin.install "bin/observaitory", "bin/observaitory-event"
    libexec.install "integrations"
    pkgshare.install "README.md", "CHANGELOG.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/observaitory --version")
    assert_match version.to_s, shell_output("#{bin}/observaitory-event --version")
  end
end
