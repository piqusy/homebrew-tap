class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.0.0/wt-link"
  sha256 "79d973b035f3939581a2bcc0512f9827464d65ca100d92b267fdb76f1d32f43b"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
