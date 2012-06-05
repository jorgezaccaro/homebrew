require 'formula'

class Libcouchbase < Formula
  homepage 'http://couchbase.com/develop/c/next'
  url 'http://packages.couchbase.com/clients/c/libcouchbase-1.1.0dp4.tar.gz'
  md5 '546025c8f5e0aaa8f57bb350f2949694'

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
