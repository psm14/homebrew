require 'formula'

class SilcClient < Formula
  homepage 'http://silcnet.org/'
  url 'http://silcnet.org/download/client/sources/silc-client-1.1.8.tar.bz2'
  sha1 '5936ab682e746ae413f938ce9c9b72215d6524c0'

  depends_on 'pkg-config' => :build
  depends_on 'glib'

	# Don't strip, to allow dynamic loading of modules
	skip_clean 'bin'

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}",
													"--disable-asm",
                          "--with-perl=no",
                          "--with-bot",
                          "--with-proxy",
                          "--enable-ssl",
                          "--enable-ipv6",
                          "--with-socks"
    # 'make' and 'make install' must be done separately on some systems
    system "make"
    system "make install"
  end
end

