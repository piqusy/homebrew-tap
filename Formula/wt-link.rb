class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.7.0/wt-link-2.7.0.tar.gz"
  sha256 "e799a6c31af2812534f3a2b2795ff3f37f2ecde2ec0a5bb2d6b0ae0263c0c582"
  version "2.7.0"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
