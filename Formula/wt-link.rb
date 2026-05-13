class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.11.3/wt-link-2.11.3.tar.gz"
  sha256 "9b76743c1344d0e59bcf9a1131f0d1c4271976a3154bb94ec16bcec3f4c3e800"
  version "2.11.3"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
