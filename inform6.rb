require 'formula'

class Inform6 < Formula
  url 'http://ifarchive.flavorplex.com/if-archive/infocom/compilers/inform6/source/inform-6.32.1.tar.gz'
  homepage 'http://www.inform-fiction.org/inform6.html'
  md5 'df582782f011d78f693d42abe6083250'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
