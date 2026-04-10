class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.4.0/wt-link"
  sha256 "fe044a3e9d39d1ccd7c425992f1283c2c3736d22cba9810c67cbc9c3a72e8a92"
  version "1.4.0"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
