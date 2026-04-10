class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.6.1/wt-link"
  sha256 "103fcebbd0e26c70c8d1df8cb7b8ecb81d85a6cada9600221d4c00c648b409c0"
  version "1.6.1"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
