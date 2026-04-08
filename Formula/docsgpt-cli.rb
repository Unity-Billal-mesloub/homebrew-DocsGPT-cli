class DocsgptCli < Formula
  desc "A CLI tool for DocsGPT"
  homepage "https://github.com/arc53/DocsGPT-cli"
  url "https://github.com/arc53/DocsGPT-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b9f18862142a6ff9536dd272bf9d6fe01401201a77cbec34275d2a9a05f7ed4f"
  version "1.0.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"docsgpt-cli"
  end

  test do
    assert_match "DocsGPT-cli version", shell_output("#{bin}/docsgpt-cli --version")
  end
end
