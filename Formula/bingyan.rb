class Bingyan < Formula
  desc "冰岩开放平台 CLI：在 Agent 和脚本中使用校园服务"
  homepage "https://open.bingyan.net"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-darwin-arm64/-/@bingyan/cli-darwin-arm64-0.3.1.tgz"
      sha256 "5a863162f4d4a0ffa4579c2a53a912dcdeec700f07842e9134de659426cc33e0"
    end

    on_intel do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-darwin-x64/-/@bingyan/cli-darwin-x64-0.3.1.tgz"
      sha256 "48f831db5a46251fc7f91a3af699acd92e79822470e9285be08ac60e3a6834a5"
    end
  end

  on_linux do
    on_arm do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-linux-arm64/-/@bingyan/cli-linux-arm64-0.3.1.tgz"
      sha256 "207b73c10748919e2c64d1543332d663f2764af43d11fe9c1688acb6e09c6105"
    end

    on_intel do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-linux-x64/-/@bingyan/cli-linux-x64-0.3.1.tgz"
      sha256 "7a0cdb7630e4d7b920a5933ecd028883d8a814f537230d07e8c6057e240c6472"
    end
  end

  def install
    bin.install "bin/bingyan"
  end

  def caveats
    <<~EOS
      默认连接正式站点。使用其他站点运行：
        bingyan configure --url <网站地址>
    EOS
  end

  test do
    assert_match "bingyan #{version}", shell_output("#{bin}/bingyan --version")
  end
end
