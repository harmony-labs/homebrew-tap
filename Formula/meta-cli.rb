# typed: false
# frozen_string_literal: true

class MetaCli < Formula
  desc "Multi-repo management CLI with AI integration"
  homepage "https://github.com/harmony-labs/meta"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-arm64.tar.gz"
      sha256 "03b242ac41e1bfd767b39fcae26eb62121570a59f03330e2a6183eb4a9852b00"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-darwin-x64.tar.gz"
      sha256 "43c639e4f3d93eb33f652aa5e1d45f9c1b5ff7a9edf8eddd7c0a5f9ed18b1e62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-arm64.tar.gz"
      sha256 "06d73de45db8a05dbeda77f303571b1983b3133b016341f9b64f179ee0cfb96f"
    end
    on_intel do
      url "https://github.com/harmony-labs/meta/releases/download/v#{version}/meta-linux-x64.tar.gz"
      sha256 "36f62503b69b3d7086d27a1dfb29e69edabed43d154aed3ce655eaf03c205d54"
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
