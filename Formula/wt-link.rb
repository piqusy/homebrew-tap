class WtLink < Formula
  desc 'WordPress worktree provisioner for local development with Laravel Herd'
  homepage 'https://github.com/piqusy/wt-link'
  url 'https://github.com/piqusy/wt-link/releases/download/v2.2.0/wt-link-2.2.0.tar.gz'
  sha256 '1127652b4004392674fad3da1688e47a39b71cbeec4fd1ae1400d8f22f4e506d'
  version '2.2.0'
  license 'MIT'

  def install
    bin.install 'bin/wt-link'
    (lib / 'wt-link').install Dir['lib/wt-link/*.sh']
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt-link --version")
  end
end
