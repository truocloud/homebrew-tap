# Generado por scripts/packagers.ts — no editar a mano.
class Truo < Formula
  desc "CLI de TruoCloud: VPS, DNS, bases de datos, contenedores y balanceadores"
  homepage "https://docs.truo.cloud/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/truocloud/truo-devkit/releases/download/v0.1.0/truo-darwin-arm64"
      sha256 "84b6f1de495aacbc8b760a25c8415eb4843c5762a0621106e30f728da1b67d34"
    end
    on_intel do
      url "https://github.com/truocloud/truo-devkit/releases/download/v0.1.0/truo-darwin-x64"
      sha256 "7bdeac42aab851fdf358bd3d253b3e41365256ca345efb5b05b0dc19e80166ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/truocloud/truo-devkit/releases/download/v0.1.0/truo-linux-arm64"
      sha256 "1fe237290109dc9d1e1a66c825b144cbc7bf1caee1f96e6964588293a769c30e"
    end
    on_intel do
      url "https://github.com/truocloud/truo-devkit/releases/download/v0.1.0/truo-linux-x64"
      sha256 "b5878d748a98e7a61ffa81cdd178b033f77a2eb57eb3669c6fd54962a414562a"
    end
  end

  def install
    bin.install Dir["truo-*"].first => "truo"
    generate_completions_from_executable(bin/"truo", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/truo --version")
  end
end
