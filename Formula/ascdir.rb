class Ascdir < Formula
  desc "Manage App Store metadata, TestFlight distribution, and releases"
  homepage "https://ascdir.realunivlog.com"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.2/ascdir_1.2.2_darwin_arm64.tar.gz"
      sha256 "a6870916c8df205296e2ff1a9d11081163fb291657a2d9d1aab574ea0fee4c3b"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.2/ascdir_1.2.2_darwin_amd64.tar.gz"
      sha256 "3e8167668e0a62cdae272f668dec3eebf9b928e42fb453c6a5aecff2fa524fb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.2/ascdir_1.2.2_linux_arm64.tar.gz"
      sha256 "45b7569f5856bf669f7cca5b8555f01c05f634cfebcd6f27783037ec9bc5fe4d"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.2/ascdir_1.2.2_linux_amd64.tar.gz"
      sha256 "566dbee67c22b47fe233d1b05f10b5dee1cf55327f7362daa7c213bfd5a5384b"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
