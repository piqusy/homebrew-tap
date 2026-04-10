class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.7.1/wt-link"
  sha256 "fe2d20db01f0d6c302db7318eea8aa0a9508f80fe704e1c2bbfc14b4c181ba97"
  version "1.7.1"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
