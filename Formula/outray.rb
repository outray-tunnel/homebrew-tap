class Outray < Formula
  desc "Expose your local server to the internet"
  homepage "https://github.com/outray-tunnel/outray"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-arm64.tar.gz"
      sha256 "37aba43892c5fce2877ce0673970b7523122c0f2c351d172abf058db9598d676"
    end
    on_intel do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-x64.tar.gz"
      sha256 "cd3852ce595584bc7ef0fb54c7da0c4195d36bf4cbc5fb525a9397c2c31fa5d8"
    end
  end

  on_linux do
    url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-linux-x64.tar.gz"
    sha256 "927f4486e55979ceba5add344a44da2dc4bf2ca5e355b0a72ebe2aeeb161a5e2"
  end

  def install
    bin.install "outray"
  end

  test do
    system "#{bin}/outray", "--version"
  end
end
