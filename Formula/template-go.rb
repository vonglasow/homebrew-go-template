class TemplateGo < Formula
  desc "Template engine for Go"
  homepage "https://github.com/vonglasow/template-go"
  version "1.1.2"
  license "GPL-3.0-or-later"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vonglasow/template-go/releases/download/v1.1.2/template-go_1.1.2_darwin_arm64.tar.gz"
    sha256 "d61ae92305a4f481455a773bced226491610e9f15ea81cac5cec9efe9ed269d4"
  end

  def install
    bin.install "template-go"
  end

  test do
    system "#{bin}/template-go"
  end
end
