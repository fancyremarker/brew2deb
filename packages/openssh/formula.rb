class OpenSSH < DebianSourceFormula
  url 'http://ftp.de.debian.org/debian/pool/main/o/openssh/openssh_5.5p1-6+squeeze1.dsc'
  md5 'b674c09fe06caa7b7735d05780813ae6'
  version '1:5.5p1-6+squeeze1+aptible1'

  def patches
    [
      'sjg-key-verification-plugin.patch',
      'sjg-timestamp-sshd-accept.patch',
      'sjg-send-proxy.patch',
    ]
  end

  def build
    ENV['DEB_BUILD_OPTIONS'] = 'nostrip'
    super
  end
end
