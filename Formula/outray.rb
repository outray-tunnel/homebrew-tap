class Outray < Formula
  desc "Expose your local server to the internet"
  homepage "https://github.com/outray-tunnel/outray"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-arm64.tar.gz"
      sha256 "65955a11b1bc2fa3c591e3e285257d7e469ac7a47ae18b4aa0b93fa3201609c2"
    end
    on_intel do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-x64.tar.gz"
      sha256 "b75e55d8ceef748b188a94f851546a420bcf7689c4bef451b05ce1744cf9d478"
    end
  end

  on_linux do
    url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-linux-x64.tar.gz"
    sha256 "94817b7e81bd6e68743793c01751b14c296a457255551f5d13f2144550943891"
  end

  def install
    bin.install "outray"
  end

  test do
    system "#{bin}/outray", "--version"
  end
end
