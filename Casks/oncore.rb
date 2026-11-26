cask "oncore" do
  version "1.5.2"
  sha256 "b83691e847b4a80e942b2c8b05f4c28b1ad394e9f0c3f6ccb4e1979d42aef11e"

  url "https://github.com/juanescalante0942/oncore-releases/releases/download/mac-v#{version}/Oncore-#{version}-mac-arm64.dmg"
  name "Oncore"
  desc "Floating lyrics companion for Spotify desktop"
  homepage "https://github.com/juanescalante0942/oncore-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Oncore.app"

  caveats <<~EOS
    This build is ad-hoc signed and is not Apple-notarized.
    macOS security prompts still apply.
  EOS
end
