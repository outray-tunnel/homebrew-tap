class Outray < Formula
  desc "Expose your local server to the internet"
  homepage "https://github.com/outray-tunnel/outray"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-linux-x64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "outray"
  end

  test do
    system "#{bin}/outray", "--version"
  end
end
