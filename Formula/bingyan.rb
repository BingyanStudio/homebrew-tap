class Bingyan < Formula
  desc "冰岩开放平台 CLI：在 Agent 和脚本中使用校园服务"
  homepage "https://open.bingyan.net"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-darwin-arm64/-/@bingyan/cli-darwin-arm64-0.3.0.tgz"
      sha256 "412accde95d01b05a13d19bd8551271bff07213923f05b11e8c5b15931614fdf"
    end

    on_intel do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-darwin-x64/-/@bingyan/cli-darwin-x64-0.3.0.tgz"
      sha256 "4a6bc323d6494e80f7e276f024c33c082e3acb4117f860fd5ca0d0fd6e4a8ac5"
    end
  end

  on_linux do
    on_arm do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-linux-arm64/-/@bingyan/cli-linux-arm64-0.3.0.tgz"
      sha256 "8e3c4182516f9f7765cc8ebc991ceb38789c12efe4791e7b44671b06fb082504"
    end

    on_intel do
      url "https://npm.cnb.cool/BingyanStudio/open-bingyan-cli/-/packages/@bingyan/cli-linux-x64/-/@bingyan/cli-linux-x64-0.3.0.tgz"
      sha256 "1193eccfeaa9e49eb8912bb7f5d406f32acddb49e18ecef59bb1e94a6bd6edeb"
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
