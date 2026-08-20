class Ascdir < Formula
  desc "Manage App Store metadata, TestFlight distribution, and releases"
  homepage "https://github.com/Arata1202/ascdir"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.4/ascdir_1.1.4_darwin_arm64.tar.gz"
      sha256 "b73621d05c31ea15993e1445d52425702132f3b5d34962bcf4dcf583d3f67fb6"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.4/ascdir_1.1.4_darwin_amd64.tar.gz"
      sha256 "51dcfeac9856aa5bf8f3bfedb6aaf75945e6d4093f49b50546aabf36fc896e7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.4/ascdir_1.1.4_linux_arm64.tar.gz"
      sha256 "59bbe01f042d42fa30bf17a55694e213bf8f8ed1c3ad8426e9de04109121ac3a"
    else
      url "https://github.com/Arata1202/ascdir/releases/download/v1.1.4/ascdir_1.1.4_linux_amd64.tar.gz"
      sha256 "3cc6e27c3a1885a036a149cab6c15c08f78207761da5d47e8f2ca9880b0f9a24"
    end
  end

  def install
    bin.install "ascdir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascdir --version")
  end
end
