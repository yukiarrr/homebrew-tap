# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsk < Formula
  desc "ecsk is a CLI tool to interactively use frequently used functions of docker command in Amazon ECS. (docker run, exec, cp, logs, stop)"
  homepage "https://github.com/yukiarrr/ecsk"
  version "0.5.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.3/ecsk_Darwin_x86_64.tar.gz"
    sha256 "0b0fde029f4b0cdb466a4f71b010a8302e516fe069627319bf0d99728f8d612e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.3/ecsk_Darwin_arm64.tar.gz"
    sha256 "90027372dcd780c49d2d248b4fc4984aada8496dc4f99fbb0df66470c8ccc8c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.3/ecsk_Linux_x86_64.tar.gz"
    sha256 "9db96e6a087b6da86d637d4c765586d67643975c04a566837416d45d45cd1c58"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/yukiarrr/ecsk/releases/download/v0.5.3/ecsk_Linux_arm64.tar.gz"
    sha256 "cbccd796961858e3f57de481490d7aac7849835389d355a2a74750f166103fac"
  end

  def install
    bin.install "ecsk"
  end

  test do
    system "#{bin}/ecsk -v"
  end
end
