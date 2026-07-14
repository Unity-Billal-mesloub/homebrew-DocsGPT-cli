class DocsgptCli < Formula
  desc "A CLI tool for DocsGPT"
  homepage "https://github.com/arc53/DocsGPT-cli"
  url "https://github.com/arc53/DocsGPT-cli/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "5549a302e2e98c6c89b4275f29af4e7047a9a2074bb1b6a591df8cd97a06fbb8"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X docsgpt-cli/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match "docsgpt-cli version #{version}", shell_output("#{bin}/docsgpt-cli --version")
  end
end
