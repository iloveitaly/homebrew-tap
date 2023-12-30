# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "insta360-link" do
  version "20230821"
  sha256 "a9bdfd73fcaeb0f02fcc406a4471b2350e100fdeb3c5eb9401c17945e303f1df"

  url "https://file.insta360.com/static/9611a19afb287d7c6182e055ca162d4c/Insta360%20Link%20Controller_#{version}_155611_signed.pkg"
  name "insta360-link"
  desc "Insta360 Link Controller"
  homepage "https://www.insta360.com/download/insta360-link"

#  depends_on :macos

  pkg "Insta360 Link Controller_#{version}_155611_signed.pkg"
#  app ""

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
#  zap trash: ""
end
