# copy from https://github.com/robduncan/homebrew/commit/6065f47198593f75c700b2f59b0777cd0fb4c04c
require 'formula'

class TidyHtml5 < Formula
  homepage 'http://w3c.github.com/tidy-html5/'
  url 'https://github.com/w3c/tidy-html5/archive/master.zip'
  sha1 '45634577b7605ffa547778eddb42b81d87da519b'
  version '20131127'

  def install
    system "make",
        "-Cbuild/gmake",
        "-j1", # make fails with this Makefile when jobs > 1
        "runinst_prefix=#{prefix}",
        "devinst_prefix=#{prefix}",
        "maninst=#{prefix}/share/man",
        "install"
  end

  def test
    system "#{bin}/tidy", "-v"
  end
end
