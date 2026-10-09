# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class Observaitory < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/observaitory"
  version "0.22.0"

  on_arm do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-arm64.tar.gz"
    sha256 "72ff983169093d2337e8de6aeaef7cebefd0a29a89b79917e214d4d0e2042b65"
  end

  on_intel do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-x64.tar.gz"
    sha256 "0b56952f9c57cf0d955033434864d63743e51c061363cb31d99a675149b43f0d"
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
