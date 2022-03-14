# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wiretrustee < Formula
  desc "Wiretrustee project."
  homepage "https://wiretrustee.com/"
  version "0.5.0"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.5.0/wiretrustee_0.5.0_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "20ad5bb77052948f22c9b3b7eb9dc002a001883d12b85e8fb411fcf5fbc1dc8b"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.5.0/wiretrustee_0.5.0_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "191a940845a9d6abcdd26501bac1f78438b8f8c16151ae4c2a0e53021e8e9048"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.5.0/wiretrustee_0.5.0_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "b299bcb42df7d002020730227ca6ff90d9952a2bbd004a560e7d44347e08bb6b"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.5.0/wiretrustee_0.5.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "41b8d7292b303c6568c69e74620e7840a810797e885b784f4652684d5856e3d8"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.5.0/wiretrustee_0.5.0_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6850b74c816e5a4247f5ea59342c6ee3ccb6871165fd3504cf25f080b907f6c6"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  test do
    system "#{bin}/wiretrustee -h"
  end
end
