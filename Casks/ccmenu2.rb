# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "ccmenu2" do
  version "26.0"
  sha256 "080461673f5b9ceac2945261ed67393b1500e20b50868787d4181893256cd384"
  url "https://github.com/ccmenu/ccmenu2/releases/download/v#{version}/CCMenu.zip", verified: "github.com/ccmenu/ccmenu2/"
  name "ccmenu2"
  desc "CCMenu shows the status of builds on CI/CD servers in the menu bar"
  homepage "https://ccmenu.org"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
#livecheck do
#  url :stable
#  regex(/^CCMenu[._-]v?(\d+(?:\.\d+)+)$/i)
#  strategy :github_latest do |json, regex|
#    match = json["tag_name"]&.match(regex)
#    next if match.blank?
#
#    match[1]
#  end
#end
  depends_on macos: ">= :ventura"
  app "CCMenu.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
#  zap trash: ""
end
