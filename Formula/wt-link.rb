class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.15.0/wt-link-2.15.0.tar.gz"
  sha256 "99e081167325e2dc5b093754083b959725ddabfdddd40de075a5c8faacdfa5c6"
  version "2.15.0"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
