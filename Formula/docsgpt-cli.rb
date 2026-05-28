class DocsgptCli < Formula
  desc "A CLI tool for DocsGPT"
  homepage "https://github.com/arc53/DocsGPT-cli"
  url "https://github.com/arc53/DocsGPT-cli/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "8ad2283aa463e58cf3b22482d7986853340ee2021928bdce7dd41f1aca82ff69"
  version "1.1.2"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X docsgpt-cli/cmd.Version=#{version}"
    system "go", "build", *std_go_args, "-o", bin/"docsgpt-cli"
  end

  test do
    assert_match "DocsGPT-cli version", shell_output("#{bin}/docsgpt-cli --version")
  end
end
