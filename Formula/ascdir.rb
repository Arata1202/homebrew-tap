class Ascdir < Formula
  desc "Manage App Store Connect metadata and product-page assets as files"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.0/ascdir_1.1.0_darwin_arm64.tar.gz"
      sha256 "2bd51e5898b6d4a7b84807ab07f6febf17fb72b8d1208325cf44856430fbb103"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.0/ascdir_1.1.0_darwin_amd64.tar.gz"
      sha256 "b1d45325859b23834da3d6147a3fdab72c5c31eabf27f63a00b096490c927887"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.0/ascdir_1.1.0_linux_arm64.tar.gz"
      sha256 "499046b367f8977d994e81cbfbd06a1addc65954fff1889472200ce8975b3ec0"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.0/ascdir_1.1.0_linux_amd64.tar.gz"
      sha256 "84bc53d59b8ae3dde598736da8fba001d80a7abe93102baf6fbc22bbf1ca2448"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
