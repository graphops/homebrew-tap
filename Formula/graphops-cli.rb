# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops-cli.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class GraphopsCli < Formula
  desc "Command-line interface to the GraphOps platform"
  homepage "https://graphops.xyz"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.4.2.tgz"
      sha256 "5b23905ccd1244a52d5566766c8cd897bf874f8fc3a3d8e8c14b35d086c06ad9"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.4.2.tgz"
      sha256 "2f33d2dfc7d800dffc7af5cfdbefdf65b93d2ba21dae892b42f9bb7413d35bf2"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.4.2.tgz"
      sha256 "c08e767d4f99ecaf51e0a034cb6ad9c4689f80c272eca885e4080f2aa6bc684a"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.4.2.tgz"
      sha256 "e6d37d9a65b3ad1f50aee4b39d44889aeb053677df35b8dd31f7d824a430fa0e"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
