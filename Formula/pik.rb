class Pik < Formula
    desc "Process interactive kill"
    homepage "https://github.com/jacek-kurlit/pik"
    version "1.0.0"


    on_macos do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-apple-darwin.tar.gz"
        sha256 "4c7d38cc7810d2234fe309aea83520a85c9b5c880f503bcc8fc4023b61ce4486"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-apple-darwin.tar.gz"
        sha256 "1704cc1cd7ad04c3022c483e20bcf41fda2845c73faa5f2f9d7020f9035cc465"
      end
    end

    on_linux do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "1aba9568a6753ae92fc745de83b95ec86730344e610cd347da02f4c5d7d7af76"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "7c795ff6e32919b3320cd13a182015d8c64a155de3715559343a094d60028fb5"
      end
    end

    def install
      bin.install "pik"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pik --version")
    end
  end
