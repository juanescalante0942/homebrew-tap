cask "oncore" do
  version "1.7.0"
  sha256 "fcf6610f99a545366744395145887aaf595d9b4f67d7a6cf02639adb0a188e88"

  url "https://github.com/juanescalante0942/oncore-releases/releases/download/mac-v#{version}/Oncore-#{version}-mac-arm64.dmg"
  name "Oncore"
  desc "Floating lyrics companion for Spotify desktop"
  homepage "https://github.com/juanescalante0942/oncore-releases"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oncore.app"

  caveats <<~EOS
    This build is ad-hoc signed and is not Apple-notarized.
    macOS security prompts still apply.
  EOS
end
