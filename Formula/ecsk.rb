# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsk < Formula
  desc "ecsk is a CLI tool to interactively use frequently used functions of docker command in Amazon ECS. (docker run, exec, cp, logs, stop)"
  homepage "https://github.com/yukiarrr/ecsk"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yukiarrr/ecsk/releases/download/v0.7.0/ecsk_Darwin_x86_64.tar.gz"
      sha256 "9926e39debd67397265df75f8d648baab572240431d5371939e4a06fd9030fea"

      def install
        bin.install "ecsk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yukiarrr/ecsk/releases/download/v0.7.0/ecsk_Darwin_arm64.tar.gz"
      sha256 "3b98480919fa7fff11dc77a808a4691c37b254ba8f433219f9de11804557af03"

      def install
        bin.install "ecsk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yukiarrr/ecsk/releases/download/v0.7.0/ecsk_Linux_arm64.tar.gz"
      sha256 "4a626f422144d6425eb97833e73f34c91f46b96acdc2a0ebac7d615cb2df10ac"

      def install
        bin.install "ecsk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yukiarrr/ecsk/releases/download/v0.7.0/ecsk_Linux_x86_64.tar.gz"
      sha256 "5459a0f4cc9558b75dcbce7f375a352caa6e692dd3d13fb778c8bf63c2c7d5fd"

      def install
        bin.install "ecsk"
      end
    end
  end

  test do
    system "#{bin}/ecsk -v"
  end
end
