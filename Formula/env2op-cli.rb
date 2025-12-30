class Env2opCli < Formula
  desc "Push .env files to 1Password and pull them back"
  homepage "https://github.com/tolgamorf/env2op-cli"
  url "https://registry.npmjs.org/@tolgamorf/env2op-cli/-/env2op-cli-0.1.3.tgz"
  sha256 "d35f7ead1a1a4717adef2fc56cf607bfb9527cf79b33fc91c9984d6f517cdd7d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    return if which("op")

    <<~EOS
      env2op-cli requires the 1Password CLI to be installed.

      To install it, run:
        brew install 1password-cli

      Then sign in with:
        op signin
    EOS
  end

  test do
    assert_match "Push .env files to 1Password", shell_output("#{bin}/env2op --help")
    assert_match "Pull secrets from 1Password", shell_output("#{bin}/op2env --help")
  end
end
