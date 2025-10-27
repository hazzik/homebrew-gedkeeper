class Gedkeeper3 < Formula
  desc "Program for working with personal genealogical databases"
  homepage "https://github.com/Serg-Norseman/GEDKeeper"
  url "https://github.com/Serg-Norseman/GEDKeeper.git",
    using:  :git,
    branch: "master"
  version "3.13.0-dev"

  depends_on "dotnet"

  def install
    cd "projects/GKv3" do
      system "dotnet", "build", "GEDKeeper3.sln", "-p:Configuration=Release", "-p:Platform=MacOS",
"-p:MacBuildBundle=true"

      # Debug: Show what was actually built in current directory
      system "find", ".", "-name", "*.app", "-type", "d"

      prefix.install "bin/MacOS/Release/GEDKeeper3.app"
    end

    applications_dir = "/Applications"
    ln "-s", "#{prefix}/GEDKeeper.app", "#{applications_dir}/GEDKeeper.app"
  end

  test do
    assert_path_exists prefix/"GEDKeeper.app", "GEDKeeper.app was not installed"
  end
end
