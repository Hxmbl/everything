# typed: false
# frozen_string_literal: true

class Everything < Formula
  desc "Dump your entire project into a single file"
  homepage "https://github.com/Hxmbl/everything"
  version "v0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Hxmbl/everything/releases/download/v0.1.0/everything_v0.1.0_Darwin_x86_64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Hxmbl/everything/releases/download/v0.1.0/everything_v0.1.0_Darwin_arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Hxmbl/everything/releases/download/v0.1.0/everything_v0.1.0_Linux_x86_64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Hxmbl/everything/releases/download/v0.1.0/everything_v0.1.0_Linux_arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "everything"
  end

  test do
    system "#{bin}/everything", "--version"
  end
end
