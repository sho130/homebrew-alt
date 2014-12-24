require 'formula'

class Juman < Formula
  homepage 'http://nlp.ist.i.kyoto-u.ac.jp/index.php?JUMAN'
  url 'http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/juman/juman-7.01.tar.bz2&name=juman-7.01.tar.bz2'
  sha1 'e22eb113f40216b8a04d811484a94f93f834ae9a'
  version '7.01'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system 'make', 'install'
  end

  def test
    system "#{bin}/juman", "-v"
  end
end
