class Ruby211 < FPM::Cookery::Recipe
  description 'The Ruby virtual machine'

  name 'ruby'
  version '1:2.1.1.0'
  revision 0
  homepage 'http://www.ruby-lang.org/'
  source 'http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.bz2'
  sha256 '96aabab4dd4a2e57dd0d28052650e6fcdc8f133fa8980d9b936814b1e93f6cfc'

  section 'interpreters'

  build_depends 'autoconf', 'readline-devel', 'bison', 'zlib-devel',
                'openssl-devel', 'libyaml-devel'

  depends  'libffi-devel', 'ncurses-devel', 'readline-devel', 'bison', 'zlib-devel', 'openssl-devel', 'libyaml-devel'

  def build
    configure :prefix => prefix, 'disable-install-doc' => true
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
