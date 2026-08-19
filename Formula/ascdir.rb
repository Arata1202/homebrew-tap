class Ascdir < Formula
  desc "Manage App Store Connect metadata and product-page assets as files"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.3/ascdir_1.1.3_darwin_arm64.tar.gz"
      sha256 "00ccf722d85996adcff1c5c533fc31d29a620bd5e14c8b182fc6f8f369d456a6"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.3/ascdir_1.1.3_darwin_amd64.tar.gz"
      sha256 "7f7b751d4796d2892f8fe1416b47409f3c479bacde2a72f44416af972498cb1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.3/ascdir_1.1.3_linux_arm64.tar.gz"
      sha256 "65eb9f97898e3253940e6925f525a78f7553e53a762b98a8d0b566cdaecb62b1"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.3/ascdir_1.1.3_linux_amd64.tar.gz"
      sha256 "c0f5e0c049092b80b0f8d1af4d01b3becc2a79fb034e2774838427448a9a77fe"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
