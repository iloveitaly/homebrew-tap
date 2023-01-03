class HyperFocus < Formula
  desc "Block distracting websites and applications"
  homepage "https://github.com/iloveitaly/hyper-focus"
  url "https://github.com/iloveitaly/hyper-focus/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "543c2ca4413854759b54322fd806b4b7f6a31a1ff4ef9b780ea1c06491611332"
  license "MIT"
  
  depends_on :macos

  service do
    # pass configuration in case you run this as root
    run [opt_bin/"hyper-focus", "--configuration", "#{Dir.home}/.config/focus/config.json"]
    run_type :immediate
    keep_alive true
    process_type :background
    working_dir Dir.home
    log_path var/"log/hyper_focus.log"
    error_log_path var/"log/hyper_focus_error.log"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/hyper-focus"
  end

  test do
    assert_match("hyper-focus --help", shell_output("OVERVIEW: A daemon process which helps you focus on your work."))
  end
end
