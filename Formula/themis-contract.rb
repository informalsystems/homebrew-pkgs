class ThemisContract < Formula
  desc "A command line-based parameterized contracting tool"
  homepage "https://github.com/informalsystems/themis-contract"
  url "https://github.com/informalsystems/themis-contract/archive/v0.2.4.tar.gz"
  sha256 "2955adf0fd7aad65c1b05faeb327b2862e44267654af17f33fe95bffb68881a7"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "pandoc"
  depends_on "pandoc-crossref"
  depends_on "MacTeX"
  depends_on "dhall-json"
  depends_on "git"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test themis-contract`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
