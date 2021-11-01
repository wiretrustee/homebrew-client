# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wiretrustee < Formula
  desc "Wiretrustee project."
  homepage "https://wiretrustee.com/"
  version "0.2.0-beta.5"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.5/wiretrustee_0.2.0-beta.5_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "361d6dedd6df8ca1998acdc554c1c659fce2da5656bb4a3b87a7de9a5eff5605"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.5/wiretrustee_0.2.0-beta.5_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "286adb51ef6e4c07d696e0e87dafc957692dcd960ce7c956a1ffae007e6e6c00"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.5/wiretrustee_0.2.0-beta.5_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9c7a23fef0b20750afbfef1f1412279f9a7040b7011be9d0db6fb7234e0306f3"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.5/wiretrustee_0.2.0-beta.5_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "97de9e4f41fd9a5ae0cb122377282a4be1f2d9fd6435b98cb367cfc4aa3d2c71"

      def install
        bin.install "wiretrustee"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/wiretrustee/wiretrustee/releases/download/v0.2.0-beta.5/wiretrustee_0.2.0-beta.5_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "de028873fa056f085cb2543f60a10cb8ea47630c8eabdc3d007e412d0ec1361b"

      def install
        bin.install "wiretrustee"
      end
    end
  end

  test do
    system "#{bin}/wiretrustee -h"
  end
end
