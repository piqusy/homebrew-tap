# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Do not manually edit the version, arm64_sha256, or x64_sha256 fields.
class Observaitory < Formula
  desc "Local-first attention queue for AI agent sessions"
  homepage "https://github.com/piqusy/observaitory"
  version "0.2.0"

  on_arm do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-arm64.tar.gz"
    sha256 "28eae2175459d89ea4348ef143f38fae59ce58a76b55e6c8579279cb2e0012b9"
  end

  on_intel do
    url "https://github.com/piqusy/observaitory/releases/download/v#{version}/observaitory-darwin-x64.tar.gz"
    sha256 "d6c012a549ba355fe41ead2a7501536c1fe7c941231b043041e4ef58bee51f32"
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
