cask "oncore" do
  version "1.6.0"
  sha256 "3cd6572abdb54cf0a9ac25a471abc2d57733d073cc9ee15f2d849db768937942"

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
