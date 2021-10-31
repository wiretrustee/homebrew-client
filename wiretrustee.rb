# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wiretrustee < Formula
  desc "Wiretrustee project."
  homepage "https://wiretrustee.com/"
  version "0.2.0-beta.4"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.4/wiretrustee_0.2.0-beta.4_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fb0da2877f397a1b4e35c1204ad0dc51ac36b0812be69f5e7e86080b505e18e2"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.4/wiretrustee_0.2.0-beta.4_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4a2c98286d46d6437c6a156ccb3a681f9fbfc93ffb7a361d5a1e13bb8c801560"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.4/wiretrustee_0.2.0-beta.4_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "950dc6229fe99eba3e48091e2e198a0456def255a3af810ac2e8701517aee9ee"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.4/wiretrustee_0.2.0-beta.4_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "41e06abc5958b33c356c0a14016fe44c56864392f3fbc6a577e8551b2c12ff00"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.4/wiretrustee_0.2.0-beta.4_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "e2299c447d562bbf9e4da82c5df493ce660975ccb005b670cd6994e1c765d54a"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  test do
    system "#{bin}/wiretrustee -h"
  end
end
