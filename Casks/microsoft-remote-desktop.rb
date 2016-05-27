cask 'microsoft-remote-desktop' do
  version :latest
  sha256 '9f81dc05b3e0eecf27dace4d310e903b94743b0fc2bf5b93ac12f55958bb6673'

  url 'https://dl.dropboxusercontent.com/u/15801038/mrd.pkg'
  name 'Microsoft Remote Desktop'
  homepage 'https://www.microsoft.com/mac'
  license :commercial

  pkg 'mrd.pkg'

  uninstall pkgutil:   [
                         'com.microsoft.rdc.*',
                       ]
end
