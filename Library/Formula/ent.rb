require 'formula'

class Ent < Formula
	version '1.0'
  homepage 'http://www.fourmilab.ch/random/'
  url 'http://www.fourmilab.ch/random/random.zip'
  md5 '8104a83af1ea5b280da96c92da18eae4'

  def install
    system "make"
		bin.install "ent"

    # Used in the below test
    prefix.install "entest.mas"
    prefix.install "entitle.gif"
  end

  def test
    # TODO: patch entest.bat (which is also a valid unix shell script) to handle
    # the homebrew prefix directory and also run diff 
    return False
  end
end
