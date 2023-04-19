class HyperFocus < Formula
  desc "Block distracting websites and applications"
  homepage "https://github.com/iloveitaly/hyper-focus"
  url "https://github.com/iloveitaly/hyper-focus/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "cfcd4eb054aeb18c8ea53188de211c5b59f4fa8612dec7fcda6cb35a0a5b4e3c"
  license "MIT"

  depends_on :macos

  service do
    # pass configuration in case you run this as root
    run [opt_bin/"hyper-focus", "--configuration", "#{Dir.home}/.config/focus/config.json"]
    environment_variables PATH: std_service_path_env
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
