# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsk < Formula
  desc "ecsk is a CLI tool to interactively use frequently used functions of docker command in Amazon ECS. (docker run, exec, cp, logs, stop)"
  homepage "https://github.com/yukiarrr/ecsk"
  version "0.5.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.1/ecsk_Darwin_x86_64.tar.gz"
    sha256 "9cc8146957e8e8cacc21f8d7cc657d7d0f7a8715b430213661e64ee9ab909641"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.1/ecsk_Darwin_arm64.tar.gz"
    sha256 "bdbc2c3a0749a073754fc398f614389794ce03a9458f8a6119d1cdcd6a6eb633"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.1/ecsk_Linux_x86_64.tar.gz"
    sha256 "0c6daf660646c6b1ca39b3e5f053f0883fa75602aa69fd15a3a34b0128efd1b7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.1/ecsk_Linux_arm64.tar.gz"
    sha256 "2aece3085fad0db52f137a27e544ca065d8d69f2f7dfc870460b5a773f0b7b6e"
  end

  def install
    bin.install "ecsk"
  end

  test do
    system "#{bin}/ecsk -v"
  end
end
