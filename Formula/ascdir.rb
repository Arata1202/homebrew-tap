class Ascdir < Formula
  desc "Manage App Store Connect metadata and product-page assets as files"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.1/ascdir_1.1.1_darwin_arm64.tar.gz"
      sha256 "b387dd70b630710765f7bfaf85cab5ace6c1d8d0e3f55a738dc1d9fcf122dcad"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.1/ascdir_1.1.1_darwin_amd64.tar.gz"
      sha256 "430fd16d81096adfc3e679847f2ed840b2aebd88e843ffdb22aaf94ec04a2a58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.1/ascdir_1.1.1_linux_arm64.tar.gz"
      sha256 "5b9cd9880437faab4880ac09a74861843a5da91ae31d2d6212e073589bf36e26"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.1/ascdir_1.1.1_linux_amd64.tar.gz"
      sha256 "514769049cee7078e9e2ed30d651d2d30b5d52d7ab29cebcbf878b5892b76020"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
