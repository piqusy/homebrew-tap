class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.5.0/wt-link"
  sha256 "abbd7c0c705067632d3a3fe4ef75bb29cc4e8a1ade86b7469e50947f4a2e4b71"
  version "1.5.0"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
