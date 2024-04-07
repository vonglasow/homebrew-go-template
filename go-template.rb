# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoTemplate < Formula
  desc "Template"
  homepage "https://github.com/vonglasow/template-go"
  version "1.1.5"
  license "GPL3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vonglasow/go-template/releases/download/v1.1.5/template-go_1.1.5_darwin_arm64.tar.gz"
      sha256 "af660ca031eea8f75176f3d6b873fb385f804c98fa3860b8226204c9d8db84e8"

      def install
        bin.install "template-go"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vonglasow/go-template/releases/download/v1.1.5/template-go_1.1.5_darwin_amd64.tar.gz"
      sha256 "0b4ea10cd6d942b9c78a995e5a38400a6ef33447c76634aed01b3ea20f917605"

      def install
        bin.install "template-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vonglasow/go-template/releases/download/v1.1.5/template-go_1.1.5_linux_amd64.tar.gz"
      sha256 "ac59b8af920bc19f4e5840dec21712a1e255d9faea490ebe2da98cbdcc5a5125"

      def install
        bin.install "template-go"
      end
    end
  end
end
