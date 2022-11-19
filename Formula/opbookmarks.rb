class Opbookmarks < Formula
  desc "Export 1Password item metadata to support 3rd party app integrations"
  homepage "https://github.com/dteare/opbookmarks"
  url "https://github.com/dteare/opbookmarks/archive/refs/tags/release/19.tar.gz"
  sha256 "8dcddadfd1b9b2e3e960395fcf84191f6bae29b0361079dbd4aae18949a751fd"
  license ""

  depends_on "rust" => :build

  service do
    run [opt_bin/"opbookmarks", "--watch"]
    run_type :immediate
    # `/usr/local/bin` required in order for the `op` cli tool to be found
    environment_variables PATH: std_service_path_env + ":/usr/local/bin"
    working_dir Dir.home
    log_path var/"log/opbookmarks.log"
    error_log_path var/"log/opbookmarks_error.log"
    keep_alive true
    process_type :background
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match("opbookmarks [OPTIONS] [ACCOUNTS]", shell_output("#{bin}/opbookmarks --help"))
  end
end
