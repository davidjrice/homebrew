require 'formula'

class Libnoise < Formula
  homepage 'https://github.com/qknight/libnoise'
  head 'https://github.com/qknight/libnoise.git'
  # url 'http://prdownloads.sourceforge.net/libnoise/libnoisesrc-1.0.0.zip'
  # sha1 '559883a3c903167918d5512370a260772448dec1'

  depends_on 'cmake' => :build

  def install
    mkdir "build" do
      system "cmake", "-DCMAKE_MACOSX_RPATH=ON", "..", *std_cmake_args
      system "make"
      system "make install"
    end
  end
end