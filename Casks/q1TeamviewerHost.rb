cask 'q1TeamviewerHost' do
  version 'idcru2jz68'
  sha256 'f41edd5097d72b5be958d04dfa09186b9693b5777230e059fac52ee79be72137'

  url 'https://download.teamviewer.com/download/version_11x/CustomDesign/Install%20TeamViewerHost-idcru2jz68.pkg'
  name 'TeamViewer Host'
  homepage 'https://teamviewer.com'
  license :freemium

  pkg 'Install TeamViewerHost-idcru2jz68.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            launchctl: 'com.teamviewer.service',
            delete:    [
                         '/Applications/TeamViewerHost.app',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                         '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                         '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                       ]

  zap       delete: [
                      '~/Library/Caches/com.teamviewer.TeamViewerHost',
                      '~/Library/Logs/TeamViewerHost',
                    ]
end
