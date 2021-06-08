class JikeCli < Formula
  desc '即刻命令行客户端'
  homepage 'https://github.com/junbaor/jike-cli'
  url 'https://github.com/junbaor/jike-cli/releases/download/v0.1.2/jike-cli.jar'
  sha256 'fce0e4a78a4d1362ca3345c447494f568c83dfe46ac0030e28c775aa99dbb06c'
  version "v0.1.1"

  bottle :unneeded
  depends_on 'openjdk@8'

  def install
    libexec.install 'jike-cli.jar'
    bin.write_jar_script libexec/'jike-cli.jar', 'jike-cli'
  end
end
