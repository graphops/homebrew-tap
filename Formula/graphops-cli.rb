# Rendered by render-formula.sh for each CLI release; do not edit the rendered graphops-cli.rb.
# The binaries are the release's per-platform npm packages; each tarball holds `package/bin/graphops`.
class GraphopsCli < Formula
  desc "Command-line interface to the GraphOps platform"
  homepage "https://graphops.xyz"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-darwin-arm64/-/cli-darwin-arm64-0.2.0.tgz"
      sha256 "fab76cb0a1a9062f9871cabd50de0ff4d45670e0f4ce8b2a88564dd1b8ea7981"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-darwin-x64/-/cli-darwin-x64-0.2.0.tgz"
      sha256 "128a2130a91d7544b29eb649e0d5e9c6001cfea199f9c884d69675d84c23bc46"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@graphops/cli-linux-arm64/-/cli-linux-arm64-0.2.0.tgz"
      sha256 "ce68eca41da042844eaea65ad190398f9e53d6fe8c64e29c18e2f7cc3df7e0f8"
    end
    on_intel do
      url "https://registry.npmjs.org/@graphops/cli-linux-x64/-/cli-linux-x64-0.2.0.tgz"
      sha256 "1479eb98766af7d7e4122445cee78b878d8ab48fea70a1702e224af35f824286"
    end
  end

  def install
    bin.install "bin/graphops"
  end

  test do
    assert_equal "graphops #{version}", shell_output("#{bin}/graphops --version").strip
  end
end
