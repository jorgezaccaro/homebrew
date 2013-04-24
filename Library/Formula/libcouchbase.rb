require 'formula'

class Libcouchbase < Formula
  homepage 'http://couchbase.com/develop/c/current'
  url 'http://packages.couchbase.com/clients/c/libcouchbase-2.0.5_8_g6103572.tar.gz'
  sha1 '175013028583ad58fe4e1a89128e51ff48dc2b6c'

  option 'with-libev-plugin', 'Build libev IO plugin (will pull libev dependency)'
  option 'without-libevent-plugin', 'Do not build libevent plugin (will remove libevent dependency)'

  depends_on 'libev' if build.include?('with-libev-plugin')
  depends_on 'libevent' unless build.include?('without-libevent-plugin')

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-examples",
                          "--disable-tests", # don't download google-test framework
                          "--disable-couchbasemock"
    system "make install"
  end

  def test
    system "#{bin}/cbc-version"
  end
end
