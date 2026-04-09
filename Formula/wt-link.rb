class WtLink < Formula
  desc "WordPress worktree provisioner for local development with Laravel Herd"
  homepage "https://github.com/piqusy/wt-link"
  url "https://github.com/piqusy/wt-link/releases/download/v1.3.1/wt-link"
  sha256 "9c012629f364144b5ba8fc19534b306869d11b00d5d363bb1215ecf70b1ccd30"
  version "1.3.1"
  license "MIT"

  def install
    bin.install "wt-link"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
