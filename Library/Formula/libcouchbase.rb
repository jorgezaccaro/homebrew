require 'formula'

class Libcouchbase < Formula
  homepage 'http://couchbase.com/develop/c/next'
  url 'http://packages.couchbase.com/clients/c/libcouchbase-1.1.0dp5.tar.gz'
  md5 'd1221c96a3d89fe575427e19f5aaf3f9'

  depends_on 'libevent'
  depends_on 'libvbucket'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-couchbasemock"
    system "make install"
  end

  def test
    system "#{bin}/cbc-version"
  end
end
