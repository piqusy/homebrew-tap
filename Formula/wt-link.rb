class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.7.1/wt-link-2.7.1.tar.gz"
  sha256 "ff3dde578424cb86b94a988f3bc5e6beecf88ebc9c74963a5e39137204e027db"
  version "2.7.1"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
