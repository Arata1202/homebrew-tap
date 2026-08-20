class Ascdir < Formula
  desc "Manage App Store metadata, TestFlight distribution, and releases"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.0/ascdir_1.2.0_darwin_arm64.tar.gz"
      sha256 "bf12f12d77931e46a01e75ec58b3ca66134cbf81117e291fc4462e17d8c44ad1"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.0/ascdir_1.2.0_darwin_amd64.tar.gz"
      sha256 "ffc2e57144bf2a5cbb92d924042d0ef34a38b7aafaa8485739ad2133f0354766"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.0/ascdir_1.2.0_linux_arm64.tar.gz"
      sha256 "3e499b8abcbb61e7d55073b0eb2dd5abcceaae1dd255342c41dfd4ee4d9f9aac"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.2.0/ascdir_1.2.0_linux_amd64.tar.gz"
      sha256 "d5c6ac3b1f1bbcf1152f78fe1c34de3c10bb48a2eb320b314d2d633667ff6d9f"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
