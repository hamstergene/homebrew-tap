require "formula"

class P5 < Formula
  include Language::Python::Virtualenv

  url 'https://github.com/hamstergene/p5.git', :tag => 'v0.8'
  sha256 'f3c87969b65c4689f22b47f0a1273120f511ccd8fba64442734ff11340a42c12'
  version '0.9'
  homepage 'https://github.com/hamstergene/p5'

  depends_on "python@3"

  def install
    virtualenv_create(libexec, "python3")
    libexec.install "p5"
    bin.install_symlink libexec/"p5"
  end
end

