# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cpdir < Formula
    desc "Copy specific files and the directory structure to the clipboard"
    homepage "https://github.com/IHaveASegway/cpdir"
    url "https://github.com/IHaveASegway/cpdir/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "e2410bd634ccc67fee71cc4bcd437c3267dd653bda3df90b4b1f3b1fc526037c"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"cpdir", "."
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/cpdir --help")
    end
  end
  