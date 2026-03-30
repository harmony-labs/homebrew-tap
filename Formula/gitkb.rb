# typed: false
# frozen_string_literal: true

class Gitkb < Formula
  desc "Git-native knowledge base with AI-powered code intelligence"
  homepage "https://github.com/harmony-labs/gitkb-releases"
  version "0.1.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-darwin-arm64.tar.gz"
      sha256 "5a6f3a127817bf37a774ecb7629f699c6141dce53279ef5d19beee759fab7602"
    end
    on_intel do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-darwin-x64.tar.gz"
      sha256 "053e25a98e610de0047544a7376752da76b586be5ab5b206e3ef1abc269e39f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-linux-arm64.tar.gz"
      sha256 "44def9451c9af6f1cf33b33adea25be9b5ab8c1e72e4788f19641eaeee8e4508"
    end
    on_intel do
      url "https://github.com/harmony-labs/gitkb-releases/releases/download/v#{version}/gitkb-linux-x64.tar.gz"
      sha256 "06dd16bbeb21743ce7ff618ab19f223405cedc1c924258f6ba4a56a2a156f55e"
    end
  end

  def install
    bin.install "git-kb"
  end

  test do
    system "#{bin}/git-kb", "--version"
  end
end
