cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.15"
  sha256 arm:   "4e5e5c314b48b1ea7b8db984bb15cfa63fb78b7c6b232642408760935a83c446",
         intel: "187c82f4334b2056dc24acfcd05efdd4af66c2cb04d58c57cf125cf2d2223b45"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
