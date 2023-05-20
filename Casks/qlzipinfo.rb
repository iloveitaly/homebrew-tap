cask "qlzipinfo" do
  version "1.2.1"
  sha256 "0c09a5a267e280da17d5ccee79dc0355ab5f0dc5892ebe76a79fd77869f25761"

  url "https://github.com/srirangav/qlZipInfo/releases/download/v.#{version}/qlZipInfo-#{version}.dmg"
  name "qlzipinfo"
  desc "List out the contents of a zip file in the QuickLook preview"
  homepage "https://github.com/srirangav/qlZipInfo"

  qlplugin "qlZipInfo.qlgenerator"
end
