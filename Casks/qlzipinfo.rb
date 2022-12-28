cask "qlzipinfo" do
  version "1.2.1"
  sha256 "97ef0a6d60a2c87ec034cba1bff9ea1f368cbd8c9307247cb8f3428e0c4c5018"

  url "https://github.com/srirangav/qlZipInfo/releases/download/v.#{version}/qlZipInfo-#{version}.dmg"
  name "qlzipinfo"
  desc "List out the contents of a zip file in the QuickLook preview"
  homepage "https://github.com/srirangav/qlZipInfo"

  qlplugin 'qlZipInfo.qlgenerator'
end
