class Ascdir < Formula
  desc "Manage App Store metadata, TestFlight distribution, and releases"
  homepage "https://ascdir.realunivlog.com"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.1/ascdir_1.2.1_darwin_arm64.tar.gz"
      sha256 "a870006b7004b216a76da23cfd216362d9cb705cdbf850da33ef4da573fae6eb"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.1/ascdir_1.2.1_darwin_amd64.tar.gz"
      sha256 "ae7edf9a6cace73186a9d367647cba3de826e1acfdcfa8a1ce3f02da309f6241"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.1/ascdir_1.2.1_linux_arm64.tar.gz"
      sha256 "3463eb010e3bccfe31700644207df5ef6f3d6b8ed939675b099591ea903f8f03"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.1/ascdir_1.2.1_linux_amd64.tar.gz"
      sha256 "eb8bd25aedf2db1ba7c13818a3eb1ef0348d408a5ca53982d4629f585a529b88"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
