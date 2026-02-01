# typed: false
# frozen_string_literal: true

class MetaCli < Formula
  desc "Multi-repo management CLI with AI integration"
  homepage "https://github.com/harmony-labs/meta"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-arm64.tar.gz"
      sha256 "cda832fe17bad714de5a6a69b7d74115acbba016e14e9f0704974b46375de778"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-x64.tar.gz"
      sha256 "34b1d466e2f2a826b27d2b000c51bc5f2ff2e40365ca41b0922a5517875f95ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-arm64.tar.gz"
      sha256 "6f2c7c4ab3dcb703a99b0214a168d75a4edf4a8db1b791d9d3729f88ebccc5ee"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-x64.tar.gz"
      sha256 "b6d1af4a4ce19bc04de0a11bec310498684c603476e096b4dd24891fcbe6dc75"
    end
  end

  def install
    bin.install "meta"
    bin.install "meta-git"
    bin.install "meta-project"
    bin.install "meta-mcp"
    bin.install "loop"
  end

  test do
    system "#{bin}/meta", "--version"
  end
end
