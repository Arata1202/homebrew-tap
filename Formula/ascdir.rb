class Ascdir < Formula
  desc "Manage App Store Connect text metadata as local files"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.0.0/ascdir_1.0.0_darwin_arm64.tar.gz"
      sha256 "b4654ad7be06809ad905ffdd14f15a1e52cf99d13da80aaaa9b70880e42c0278"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.0.0/ascdir_1.0.0_darwin_amd64.tar.gz"
      sha256 "ee677af40d2e2509d632feb11b7873d4868304378b424833b8cbca705518b7fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.0.0/ascdir_1.0.0_linux_arm64.tar.gz"
      sha256 "0754a20b4f9ec56737590295c9402298eb4cb6d819f882e96f0859904763f9f8"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.0.0/ascdir_1.0.0_linux_amd64.tar.gz"
      sha256 "e94e1d7798d65082d582f6b27ab7b68b0c14ac465682fbf7079fc0928b81f00b"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
