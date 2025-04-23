# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cpdir < Formula
    desc "Copy specific files and the directory structure to the clipboard"
    homepage "https://github.com/IHaveASegway/cpdir"
    url "https://github.com/IHaveASegway/cpdir/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "f1a5008bf87d1c5249ec6542fdf39be227161751f1486ac8de63ba0162f1b11d"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"cpdir", "."
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/cpdir --help")
    end
  end
  