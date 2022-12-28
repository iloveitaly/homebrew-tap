class HyperFocus < Formula
  desc "Block distracting websites and applications"
  homepage "https://github.com/iloveitaly/hyper-focus"
  url "https://github.com/iloveitaly/hyper-focus/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2f7b182e09873d285f95da39264464f108abf13dfb5c8174111a7dc8979b848c"
  license "MIT"

  service do
    run [opt_bin/"hyper-focus"]
    run_type :immediate
    working_dir Dir.home
    log_path var/"log/hyper_focus.log"
    error_log_path var/"log/hyper_focus_error.log"
    keep_alive true
    process_type :background
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/hyper-focus"
  end

  test do
    # TODO need assertion based o help text
    # assert_match("opbookmarks [OPTIONS] [ACCOUNTS]", shell_output("#{bin}/opbookmarks --help"))
  end
end
