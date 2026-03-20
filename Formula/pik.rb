  class Pik < Formula
    desc "Process Interactive Kill - kill processes with ease"
    homepage "https://github.com/jacek-kurlit/pik"
    version "0.30.0"

    on_macos do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/#{version}/pik-#{version}-aarch64-apple-darwin.tar.gz"
        sha256 "e22b7c0df0b28cd0b58fa859cafc3ffbeb954361d112e712d9abf7400271a796"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/#{version}/pik-#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "94f43300eb1ab6c6d05ab863a4450add46697e59b076b08ac69129f40c531639"
      end
    end

    def install
      bin.install "pik"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pik --version")
    end
  end
