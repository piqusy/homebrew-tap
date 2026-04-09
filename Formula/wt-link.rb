class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.3.2/wt-link"
  sha256 "eef51fa2ec4aa2741531d381e9bace51dda42874e0d1ef5e7c34cb29795b505b"
  version "1.3.2"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
