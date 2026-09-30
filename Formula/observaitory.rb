# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class Observaitory < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/observaitory"
  version "0.15.0"

  on_arm do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-arm64.tar.gz"
    sha256 "3ffdd94b245b2a17a387ca2516522c0481eae4edb5232bf01946f3e264435004"
  end

  on_intel do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-x64.tar.gz"
    sha256 "609c74674b928ed45fecf0ad2a38803ab100eafd41a4721b5ab010fed76aedb1"
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
