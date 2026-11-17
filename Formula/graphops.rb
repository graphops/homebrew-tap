# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class Graphops < Formula
  desc "Terminal workflows for GraphOps Subgraphs and Substreams"
  homepage "https://graphops.xyz"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.1.0.tgz"
      sha256 "901edac82f845fa8d31dcaa5d7b16d5f26b759647a50d851b9217a2115ee443f"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.1.0.tgz"
      sha256 "1d7e36aceaddb0ce8556bd5472dfe74d310abfed38b31fe42ed9a77866f263ce"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.1.0.tgz"
      sha256 "e9f611d60e2052aebd22258a5fbad0f227e7ca632f34e3e155e891fb6a10eb29"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.1.0.tgz"
      sha256 "09e356e62b8a621dd6885786d36442d2e5662b53726cbd1dfad87eacb485f3d2"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
