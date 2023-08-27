cask "qlzipinfo" do
  version "1.2.4"
  sha256 "9a5822909fa8d2af1577d580e2e5d6f31d1f90732c27f3a4ea1e7d28f338cb9b"

  url "https://github.com/srirangav/qlZipInfo/releases/download/v.#{version}/qlZipInfo-#{version}.dmg"
  name "qlzipinfo"
  desc "List out the contents of a zip file in the QuickLook preview"
  homepage "https://github.com/srirangav/qlZipInfo"

  qlplugin "qlZipInfo.qlgenerator"
end
