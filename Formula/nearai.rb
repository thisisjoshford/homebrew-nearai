class Nearai < Formula
    include Language::Python::Virtualenv
    
    desc "Command-line interface for Near AI"
    homepage "git@github.com:thisisjoshford/homebrew-nearai.git"
    url "https://github.com/nearai/nearai/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "31d560f542656623a137b3f5b9f79fe6aa737de0268657c94128eea4bc298633"
    license "MIT"
  
    depends_on "python3"

    def install
      virtualenv_create(libexec)
      virtualenv_install_with_resources
    end
  
    test do
      assert_match "version", shell_output("#{bin}/nearai version")
    end
  end