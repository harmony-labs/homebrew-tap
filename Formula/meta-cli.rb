# typed: false
# frozen_string_literal: true

class MetaCli < Formula
  desc "Multi-repo management CLI with AI integration"
  homepage "https://github.com/harmony-labs/meta"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-arm64.tar.gz"
      sha256 "553c5f9dd800955867219510fa2304f8dd23a89e9f062ae0efb757aa73e69ed8"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-x64.tar.gz"
      sha256 "0f853f07b2a5bf1aad8e46d1eb780fc7f04b6be0988ac6c8e2610b645a5c7132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-arm64.tar.gz"
      sha256 "421242a861b1ad8a43394c8579b4b79c01e630dfa53aa62699c9016b0cffb55c"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-x64.tar.gz"
      sha256 "07d0bcad78293489a6544a52601da7886a22535394e5a62992a9fed861bdb60b"
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
