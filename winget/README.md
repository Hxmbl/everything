# winget submission

To get `everything` into winget (Windows Package Manager):

1. Fork https://github.com/microsoft/winget-pkgs
2. Copy `manifests/h/Hx/Hxmbl.everything/` into your fork at the same path
3. Open a PR — their bot validates the manifest and merges it

After that, anyone on Windows can install with:
```powershell
winget install Hxmbl.everything
```

## Updating for new versions

When you cut a new release:
1. Update `PackageVersion` in all three manifest files
2. Update the `InstallerUrl` and `InstallerSha256` in the installer manifest
3. Get the new SHA256 from the release's `checksums.txt`
4. Repeat the fork + PR process
