class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.7.0/wt-link"
  sha256 "f4e179e0a9bf6c84d940d3a0c9a3a145c11e6f3b2eac85705500d129a6cfe09b"
  version "1.7.0"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
