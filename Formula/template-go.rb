class TemplateGo < Formula
  desc "Template engine for Go"
  homepage "https://github.com/vonglasow/template-go"
  version "1.1.2"
  license "GPL-3.0-or-later"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.2/template-go_1.1.2_darwin_arm64.tar.gz"
    sha256 "faf8b374574e599fd3d4fc3d1a7f170946aa12e64e7ee5840628ce7f8a46daed"
  end

  def install
    bin.install "template-go"
  end

  test do
    system "#{bin}/template-go"
  end
end
