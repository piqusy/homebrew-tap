class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.3.4/wt-link"
  sha256 "0d6113c6d782e72f5c703ed66c9e5a5b9f2764cfb794b1fe0b0bb2c855abec31"
  version "1.3.4"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
