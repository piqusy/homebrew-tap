class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.9.0/wt-link-2.9.0.tar.gz"
  sha256 "6a40e6bf7c8f833a8b16a005b2b4c1d74eb5e8098e78efa3ff95904d4f2ecc93"
  version "2.9.0"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
