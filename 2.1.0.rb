class Ruby210 < FPM::Cookery::Recipe
  description 'The Ruby virtual machine'

  name 'ruby'
  version '1:2.1.0.0'
  revision 0
  homepage 'http://www.ruby-lang.org/'
  source 'http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.bz2'
  sha256 '1d3f4ad5f619ec15229206b6667586dcec7cc986672c8fbb8558161ecf07e277'

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
