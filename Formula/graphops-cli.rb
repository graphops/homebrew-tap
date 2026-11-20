# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops-cli.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class GraphopsCli < Formula
  desc "Command-line interface to the GraphOps platform"
  homepage "https://graphops.xyz"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.4.1.tgz"
      sha256 "ba5d656342a51b4234aabf490b3a2620e4554487b6e4c42389d1ada2fb1f4dae"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.4.1.tgz"
      sha256 "11808dabbc3bb8f17ec17a8ef7687509ce102a2d641724b67af451ca691abe3b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.4.1.tgz"
      sha256 "a44cc29e642b1b952230ac8a5046529700c1ecfe6ef6e23fcf8d1e633b251fe2"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.4.1.tgz"
      sha256 "9f9d1e9119efe29d7eb35cbca5b399a609e5a9b8693103d00bd3d0d61479efab"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
