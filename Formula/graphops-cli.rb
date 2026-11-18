# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops-cli.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class GraphopsCli < Formula
  desc "Command-line interface to the GraphOps platform"
  homepage "https://graphops.xyz"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.4.0.tgz"
      sha256 "729847a76bd76e4bf2fabbd3313c32723f8cf01cae2fdb1e231263f41994ce65"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.4.0.tgz"
      sha256 "b954fe810dfda31ca5a732835e78e84144e686fde479ee3281a033411a4c64e9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.4.0.tgz"
      sha256 "b0814e3a12e449e43cf1b00494ec9c2c6ac4f07fce150900e9f417968d08fec7"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.4.0.tgz"
      sha256 "f8cbd57bee942fb8a3aef784711263e5c81787255c053f1c11f08bbf28eb08bd"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
