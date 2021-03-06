class ThemisContract < Formula
  desc "Command-line tool for parameterized contracting"
  homepage "https://github.com/informalsystems/themis-contract"
  url "https://github.com/informalsystems/themis-contract/archive/v0.2.4.tar.gz"
  sha256 "2955adf0fd7aad65c1b05faeb327b2862e44267654af17f33fe95bffb68881a7"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "go-statik" => :build
  depends_on "make" => :build
  depends_on "dhall-json"
  depends_on "git"
  depends_on "pandoc"
  depends_on "pandoc-crossref"

  def install
    system "make", "build"
    bin.install "build/themis-contract"
  end

  def caveats
    <<-EOS
      A LaTeX distribution that includes `pdflatex` is required.
      If one is not already installed, then we recommend:

        brew cask install basictex
    EOS
  end

  test do
    system "#{bin}/themis-contract", "version"
  end
end
