cask "oncore" do
  version "1.8.4"
  sha256 "9453112cb07a7cfe4907b28004a94a9c00532a82495d6d2455171d132d8c45a1"

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
