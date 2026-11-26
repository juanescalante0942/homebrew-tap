cask "oncore" do
  version "1.5.3"
  sha256 "8d5f724cd16f52e55dcae22554157273a9a9ae99a772d4ae4618df7258f0b8ab"

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
