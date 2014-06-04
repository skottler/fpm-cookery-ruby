class Ruby200 < FPM::Cookery::Recipe
    description 'The Ruby virtual machine'

    name 'ruby'
    version '1:2.0.0.481'
    revision 0
    homepage 'http://www.ruby-lang.org/'
    source 'http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.bz2'
    sha256 '0762dad7e96d8091bdf33b3e3176c2066fbf3dc09dfe85fbf40e74e83c63d8e2'
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
