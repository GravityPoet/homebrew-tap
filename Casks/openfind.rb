cask "openfind" do
  version "1.1.0"
  sha256 "b2584ea631db169508312dd57e87099325e850621cc83cc8b6b019e2ca334f81"

  url "https://github.com/GravityPoet/OpenFind/releases/download/v#{version}/OpenFind.zip"
  name "OpenFind"
  desc "Deep file search, encrypted clipboard, keep-awake, drive keep-alive, and keyboard lock in one menu-bar app"
  homepage "https://github.com/GravityPoet/OpenFind"

  depends_on macos: :sonoma

  app "OpenFind.app"

  zap trash: [
    "~/Library/Application Support/OpenFind",
    "~/Library/Caches/com.openfind.app",
    "~/Library/Preferences/com.openfind.app.plist",
  ]

  caveats <<~EOS
    OpenFind is signed with a pinned project certificate but is not notarized
    by Apple. If macOS blocks the first launch, allow it once in
    System Settings -> Privacy & Security, or run:
      xattr -cr /Applications/OpenFind.app
  EOS
end
