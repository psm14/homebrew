require 'formula'

class Gti < Formula
  version 'ee63b3f579a5fb85dd0dc45832c9c7c20177dd97'
  url 'https://github.com/rwos/gti.git', :using => :git

  def install
    puts `ls`
    system "clang", "-o", "gti", "gti.c"
    bin.install "gti"
  end
end
