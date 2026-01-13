class Outray < Formula
  desc "Expose your local server to the internet"
  homepage "https://github.com/outray-tunnel/outray"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-linux-x64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "outray"
  end

  test do
    system "#{bin}/outray", "--version"
  end
end
