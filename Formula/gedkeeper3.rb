class Gedkeeper3 < Formula
  desc "Program for working with personal genealogical databases"
  homepage "https://github.com/Serg-Norseman/GEDKeeper"
  url "https://github.com/Serg-Norseman/GEDKeeper.git",
    using:  :git,
    branch: "master"
  version "3.13.0-dev"

  depends_on "dotnet"

  def install
    configuration = "Release"
    runtime = Hardware::CPU.arm? ? "osx-arm64" : "osx-x64"
    
    cd "projects/GKv3/GEDKeeper3" do
      system "dotnet", "build", ".", "-p:Configuration=#{configuration}", "-p:Platform=MacOS",
"-p:MacBuildBundle=true", "-r:#{runtime}"

      prefix.install "bin/MacOS/#{configuration}/#{runtime}/GEDKeeper3.app"
    end

    applications_dir = "/Applications"
    ln_s "#{prefix}/GEDKeeper3.app", "#{applications_dir}/GEDKeeper3.app"
  end

  test do
    assert_path_exists prefix/"GEDKeeper3.app", "GEDKeeper3.app was not installed"
  end
end
