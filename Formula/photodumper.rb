class PhotodumperAT113 < Formula
  desc "Tool exporting photos of vk and enriching exif metadata: date and gps"
  homepage "https://github.com/Gasoid/photoDumper"
  url "https://github.com/Gasoid/photoDumper.git", tag: "1.1.3"
  license "MIT"
  head "https://github.com/Gasoid/photoDumper.git", tag: "1.1.3"

  depends_on "go" => :build

  def install
    system "go", "generate", "staticAssets.go"
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
