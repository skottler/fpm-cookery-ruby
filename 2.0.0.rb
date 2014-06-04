class Ruby200 < FPM::Cookery::Recipe
  description 'The Ruby virtual machine'

  name 'ruby'
  version '1:2.0.0.247'
  revision 0
  homepage 'http://www.ruby-lang.org/'
  source 'http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.bz2'
  sha256 '08e3d4b85b8a1118a8e81261f59dd8b4ddcfd70b6ae554e0ec5ceb99c3185e8a'

  section 'interpreters'

    build_depends 'autoconf', 'readline-devel', 'bison', 'zlib-devel',
        'openssl-devel', 'libyaml-devel'

    depends  'libffi-devel', 'ncurses-devel', 'readline-devel', 'bison',
        'zlib-devel', 'openssl-devel', 'libyaml-devel'

  def build
    configure :prefix => prefix, 'disable-install-doc' => true
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
