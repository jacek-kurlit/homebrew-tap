class Pik < Formula
    desc "Process interactive kill"
    homepage "https://github.com/jacek-kurlit/pik"
    version "0.30.2"


    on_macos do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-apple-darwin.tar.gz"
        sha256 "ae089a4a6fcec2b238c0dd36b4aac147e5e4ab106f5d383a9ba8013e3af6e2fa"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-apple-darwin.tar.gz"
        sha256 "046490a08f905738a57ec1a902f3e0966732d86356a9a0775de4942f26b7a47c"
      end
    end

    on_linux do
      on_arm do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "8cf98bd5e8ade19bb23dcf8f8ea1c394d27b13efd1a66327be92ab7094b56b99"
      end
      on_intel do
        url "https://github.com/jacek-kurlit/pik/releases/download/0.30.2/pik-0.30.2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "c93720231d43bd146029cd3cb67ffb7f1fab6aa25085f52c0f866fbc3c64596d"
      end
    end

    def install
      bin.install "pik"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/pik --version")
    end
  end
