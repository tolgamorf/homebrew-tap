class Env2opCliAT0_2_3 < Formula
  desc "Push .env files to 1Password and pull them back"
  homepage "https://github.com/tolgamorf/env2op-cli"
  url "https://registry.npmjs.org/@tolgamorf/env2op-cli/-/env2op-cli-0.2.3.tgz"
  sha256 "864cf77e842b0f6f51c848c879c3d11cc001a64168efcd0a2d9a89af6d2b113e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      env2op-cli requires the 1Password CLI.

      Install it with:
        brew install 1password-cli
    EOS
  end

  test do
    assert_match "Push .env files to 1Password", shell_output("#{bin}/env2op --help")
    assert_match "Pull secrets from 1Password", shell_output("#{bin}/op2env --help")
  end
end
