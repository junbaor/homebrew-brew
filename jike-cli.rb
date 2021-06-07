class JikeCli < Formula
  desc '即刻命令行客户端'
  homepage 'https://github.com/junbaor/jike-cli'
  url 'https://github.com/junbaor/jike-cli/releases/download/v0.1.1/jike-cli.jar'
  sha256 '08aa932e90c7700ebde91ee6dbf5c6de3c6367b73487d563ebb93d312e71bd0c'
  version "v0.1.1"

  bottle :unneeded
  depends_on 'openjdk@8'

  def install
    libexec.install 'jike-cli.jar'
    bin.write_jar_script libexec/'jike-cli.jar', 'jike-cli'
  end
end
