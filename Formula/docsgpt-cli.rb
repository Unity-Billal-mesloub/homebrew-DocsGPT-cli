class DocsgptCli < Formula
  desc "A CLI tool for DocsGPT"
  homepage "https://github.com/arc53/DocsGPT-cli"
  url "https://github.com/arc53/DocsGPT-cli/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "435e4e571d43fa8ddcd13e4824cc01afe05eac807892f8ce4bfd7a562dc93e0d"
  version "1.1.1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"docsgpt-cli"
  end

  test do
    assert_match "DocsGPT-cli version", shell_output("#{bin}/docsgpt-cli --version")
  end
end
