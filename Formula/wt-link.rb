class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v2.11.2/wt-link-2.11.2.tar.gz"
  sha256 "5e94f995721a8b43f3c3cd4a8c00e8324265dda7c5fee4dc38ebeb3423aba406"
  version "2.11.2"
  license "MIT"

  def install
    bin.install "bin/wt-link"
    (lib / "wt-link").install Dir["lib/wt-link/*.sh"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
