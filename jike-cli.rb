class JikeCli < Formula
  desc '即刻命令行客户端'
  homepage 'https://github.com/junbaor/jike-cli'
  url 'https://github.com/junbaor/jike-cli/releases/download/v0.1.4/jike-cli.jar'
  sha256 'b05150ab0bca6c7ab4cdcb732830913886f5573693c57ec6b17828a060c2bd74'
  version "v0.1.4"

  depends_on 'openjdk'

  def install
    libexec.install 'jike-cli.jar'
    bin.write_jar_script libexec/'jike-cli.jar', 'jike-cli'
  end
end
