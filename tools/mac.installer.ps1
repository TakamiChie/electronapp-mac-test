$package = Get-Content ./package.json | ConvertFrom-Json
pkgbuild --identifier test.net.onpu-tamago --component "./dist/mac-universal/$($package.name).app" --install-location /Applications --version $package.version --ownership recommended "./dist/$($package.name).pkg"
