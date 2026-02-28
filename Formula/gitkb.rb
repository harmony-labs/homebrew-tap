# typed: false
# frozen_string_literal: true

class Gitkb < Formula
  desc "Git-native knowledge base with AI-powered code intelligence"
  homepage "https://github.com/harmony-labs/gitkb-releases"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-darwin-arm64.tar.gz"
      sha256 "bfd57399605c31f38c06a2dfe00d55fd435e24a96b68c4903ef4aaf92967e1ec"
    end
    on_intel do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-darwin-x64.tar.gz"
      sha256 "02e2f9757eb4a39753cc64ec9b025c4ba2121ec101489ed9ad13e2ff6ccad62c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-linux-arm64.tar.gz"
      sha256 "ce37320cec7aabb26289f1cdc842f5672c0ea0229c065fc2304b34ba4af4edbb"
    end
    on_intel do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-linux-x64.tar.gz"
      sha256 "46131b3552271870c0b855179c90ae28b07d9cd623d7032776ffc350384c4c11"
    end
  end

  def install
    bin.install "git-kb"
  end

  test do
    system "#{bin}/git-kb", "--version"
  end
end
