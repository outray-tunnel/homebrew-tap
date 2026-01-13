class Outray < Formula
  desc "Expose your local server to the internet"
  homepage "https://github.com/outray-tunnel/outray"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-arm64.tar.gz"
      sha256 "5a5abfc5c29d7eda408a8497ab53e928097ec6b6bcab53bfee8a009e2c62805b"
    end
    on_intel do
      url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-macos-x64.tar.gz"
      sha256 "7eaa7e451ddc0b8e935303ae733de623ddc0ef188240fdb291aa3af3e7748f3e"
    end
  end

  on_linux do
    url "https://github.com/outray-tunnel/outray/releases/download/v#{version}/outray-linux-x64.tar.gz"
    sha256 "df6e5038e8dd317e3404325f0af637cca4655eb6b1395acbccab582007ddf982"
  end

  def install
    bin.install "outray"
  end

  test do
    system "#{bin}/outray", "--version"
  end
end
