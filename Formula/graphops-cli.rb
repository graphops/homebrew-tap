# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops-cli.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class GraphopsCli < Formula
  desc "Command-line interface to the GraphOps platform"
  homepage "https://graphops.xyz"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.3.0.tgz"
      sha256 "52bc4435a24064fefdb08de569469040eda58f6474902d795840c5f1ad6b9c70"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.3.0.tgz"
      sha256 "16b00731746ee8a6f09a79c2c62250e3b4688eabeb1b38b63026c2229c09b436"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.3.0.tgz"
      sha256 "81f5c011b7993e8c8c26f18e2264f3d3ba0d8f273e985493a2b9e6dfb88b0a76"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.3.0.tgz"
      sha256 "bd9f782194d216510da1a9073aadb2dbb9900421beb15cb4cacd702c43adb766"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
