class JikeCli < Formula
  desc '即刻命令行客户端'
  homepage 'https://github.com/junbaor/jike-cli'
  url 'https://github.com/junbaor/jike-cli/releases/download/v0.1.3/jike-cli.jar'
  sha256 '6ab0534c3b1f7e1a79890edb84230af835f70b2ff32e0bbf7ef1d1f4fe989be7'
  version "v0.1.3"

  bottle :unneeded
  depends_on 'openjdk@8'

  def install
    libexec.install 'jike-cli.jar'
    bin.write_jar_script libexec/'jike-cli.jar', 'jike-cli'
  end
end
