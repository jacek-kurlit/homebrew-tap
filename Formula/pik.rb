class Pik < Formula
    desc "Process interactive kill"
    homepage "https://github.com/jacek-kurlit/pik"
    version "1.0.1"


    on_macos do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-apple-darwin.tar.gz"
        sha256 "02cbe6eac32f0ea17d28334246e40da8edc6c24b932e56245a4912590c1e6382"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-apple-darwin.tar.gz"
        sha256 "1b48b395360fdcddbc06fd8ad5a561b3915d41fcb1eac3fc25cc4a320a98551b"
      end
    end

    on_linux do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "3aea0f9d636e41300c3614d77294e4d69b238f8c6389714061245ba0e6ea3d8e"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "803ca696223cd2563e36ec07450b8908391117d81fe976a54dc83f8a1f5e6590"
      end
    end

    def install
      bin.install "pik"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pik --version")
    end
  end
