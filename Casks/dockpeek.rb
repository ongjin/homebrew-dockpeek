cask "dockpeek" do
  version "1.0.0"
  sha256 "23f919196a5da82a981ff512bc7642d17e83b9069b65b18a63aeb0a6f612e298"

  url "https://github.com/ongjin/dockpeek/releases/download/v#{version}/DockPeek.zip"
  name "DockPeek"
  desc "Windows-style Dock window preview for macOS"
  homepage "https://github.com/ongjin/dockpeek"

  depends_on macos: ">= :sonoma"

  app "DockPeek.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DockPeek.app"]
  end

  caveats <<~EOS
    DockPeek requires the following permissions to function:

    1. Accessibility (Required)
       System Settings → Privacy & Security → Accessibility → Enable DockPeek

    2. Screen Recording (Required for thumbnails)
       System Settings → Privacy & Security → Screen Recording → Enable DockPeek

    If macOS shows a security warning on first launch:
       Right-click DockPeek → Open, then click "Open" in the dialog.
  EOS
end
