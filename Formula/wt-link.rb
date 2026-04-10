class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.6.0/wt-link"
  sha256 "559f09212f5f5f090b0e38b4cc534e57a942b40d4ba8c1f5edcab0ef2260a216"
  version "1.6.0"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
