require 'formula'

def with_libev_plugin?
  ARGV.include?('--with-libev-plugin')
end

def without_libevent_plugin?
  ARGV.include?('--without-libevent-plugin')
end

class Libcouchbase < Formula
  homepage 'http://couchbase.com/develop/c/next'
  url 'http://packages.couchbase.com/clients/c/libcouchbase-2.0.0beta2.tar.gz'
  md5 'df257b0f11b6bf787108d5f9ab91c439'

  depends_on 'libevent' unless without_libevent_plugin?
  depends_on 'libev' if with_libev_plugin?

  def options
    [
      ['--with-libev-plugin', 'Build libev IO plugin'],
      ['--without-libevent-plugin', 'Do not build libev IO plugin']
    ]
  end

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-examples",
                          "--disable-couchbasemock"
    system "make install"
  end

  def test
    system "#{bin}/cbc-version"
  end
end
