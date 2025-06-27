require "formula"

class Findold < Formula
    include Language::Python::Virtualenv

    desc "Find files older than given number of days, optionally moving or deleting them."
    url "https://github.com/hamstergene/findold", :using => :git, :tag => "v1.0"
    version "1.1"
    sha256 'b076626895291679627c78163ad8b523831b71b5a38f3239065555a987b97e48'
    homepage 'https://github.com/hamstergene/findold'

    depends_on "python@3"

    def install
        virtualenv_create(libexec, "python3")
        libexec.install "findold"
        bin.install_symlink libexec/"findold"
    end
end

