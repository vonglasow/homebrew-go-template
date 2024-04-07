class TemplateGo < Formula
  desc "Template engine for Go"
  homepage "https://github.com/vonglasow/template-go"
  version "1.1.1"
  license "GPL-3.0-or-later"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.1/gaia_1.1.1_darwin_amd64.tar.gz"
    sha256 "bfa7020ce0a63566fcf89a38694d462e74bcfbfea7633cd09ea8d0c9889fddcb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.1/gaia_1.1.1_darwin_arm64.tar.gz"
    sha256 "faf8b374574e599fd3d4fc3d1a7f170946aa12e64e7ee5840628ce7f8a46daed"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.1/gaia_1.1.1_linux_amd64.tar.gz"
    sha256 "864d18bf3aa2928428759c31876b36287d858385fdd0bdf8dd3bffb5bcf6ee8a"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.1/gaia_1.1.1_darwin_arm64.tar.gz"
    sha256 "faf8b374574e599fd3d4fc3d1a7f170946aa12e64e7ee5840628ce7f8a46daed"
  end

  def install
    bin.install "gaia"
  end

  test do
    system "#{bin}/gaia"
  end
end
