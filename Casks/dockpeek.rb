cask "dockpeek" do
  version "1.0.0"
  sha256 "23f919196a5da82a981ff512bc7642d17e83b9069b65b18a63aeb0a6f612e298"

  url "https://github.com/ongjin/dockpeek/releases/download/v#{version}/DockPeek.zip"
  name "DockPeek"
  desc "Windows-style Dock window preview for macOS"
  homepage "https://github.com/ongjin/dockpeek"

  depends_on macos: ">= :sonoma"

  app "DockPeek.app"

  # Accessibility and Screen Recording permissions required
  caveats <<~EOS
    DockPeek requires the following permissions to function:

    1. Accessibility (Required)
       System Settings → Privacy & Security → Accessibility → Enable DockPeek

    2. Screen Recording (Required for thumbnails)
       System Settings → Privacy & Security → Screen Recording → Enable DockPeek

    Launch DockPeek and grant permissions when prompted.
  EOS
end
