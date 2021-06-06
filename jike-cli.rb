class JikeCli < Formula
  desc '即刻命令行客户端'
  homepage 'https://github.com/junbaor/jike-cli'
  url 'https://github.com/junbaor/jike-cli/releases/download/v0.1.0/jike-cli.tar.gz'
  sha256 '82732e901648e9ecacb76598bfb6dc2d19ec35149953d53e0c7da072409c467b'
  version "v0.1.0"

  bottle :unneeded
  depends_on 'openjdk@8'

  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec / 'jike-cli.jar', 'jike-cli'
  end
end
