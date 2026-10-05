# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class Observaitory < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/observaitory"
  version "0.16.3"

  on_arm do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-arm64.tar.gz"
    sha256 "e06d19adde7145d4f22462ecf73e76e21f48080f94b60ad5f9ca23d06121625a"
  end

  on_intel do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-x64.tar.gz"
    sha256 "351182cc951832a6274712bae1adfdc9021121e13610e22f77770984017fa04e"
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
