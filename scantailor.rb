class Scantailor < Formula
  desc "Scantailor (custom) : bookscan images processor"
  homepage "https://github.com/bearrundr/scantailor-custom"
  
  url "https://github.com/bearrundr/scantailor-custom/archive/v1.0.0.tar.gz"
  sha256 "84629d2edba4c36c62bdb75eedb145262b894d950bcb95cec0dab43e21bdb909"

  head "https://github.com/bearrundr/scantailor-custom.git"
  
  depends_on "boost"
  depends_on "qt5"
  depends_on "libtiff" 
  depends_on "libpng" 
  depends_on "jpeg" 
  depends_on "zlib"
  depends_on "cmake" => :build
  
  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
