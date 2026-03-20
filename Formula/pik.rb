class Pik < Formula
    desc "Process interactive kill"
    homepage "https://github.com/jacek-kurlit/pik"
    version "0.30.1"

    on_macos do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.1/pik-0.30.1-aarch64-apple-darwin.tar.gz"
        sha256 "a0f16f5ccf4d2f162f05b532d0b1791ceb78346902bb95a4539934c7a2e2fdbd"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.1/pik-0.30.1-x86_64-apple-darwin.tar.gz"
        sha256 "1457026726cd02abdebfebf3dc88fc8ed926a1933d28523ffdf99203f73d9ca5"
      end
    end

    on_linux do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.1/pik-0.30.1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "ca5686e844b59222c79a084e7e91d1236c92b16e78e6b89c611690cb3edf65a7"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.1/pik-0.30.1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "21d1873226aed620a485d762b5e56d10c8d772f70b799fabebf44440e86087d2"
      end
    end

    def install
      bin.install "pik"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pik --version")
    end
  end
