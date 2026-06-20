# preview.ps1 - Generate mind map with local built toolbar
# Usage: .\preview.ps1 [filename.md]
# Example: .\preview.ps1 overlap-test.md

param([string]$file = "overlap-test.md")

$baseName = [System.IO.Path]::GetFileNameWithoutExtension($file)
$htmlFile = "$baseName.html"

Write-Host "Generating mind map from $file..." -ForegroundColor Cyan

# Step 1: Generate HTML using markmap-cli
npx markmap-cli $file --no-open

# Step 2: Inject local built files to replace CDN
$toolbarJs  = Get-Content "packages\markmap-toolbar\dist\index.js" -Raw -Encoding UTF8
$toolbarCss = Get-Content "packages\markmap-toolbar\dist\style.css" -Raw -Encoding UTF8
$viewJs     = Get-Content "packages\markmap-view\dist\browser\index.js" -Raw -Encoding UTF8

$html = [System.IO.File]::ReadAllText("$PSScriptRoot\$htmlFile", [System.Text.Encoding]::UTF8)

$html = $html.Replace(
    '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/markmap-toolbar@0.18.12/dist/style.css">',
    "<style>$toolbarCss</style>"
)
$html = $html.Replace(
    '<script src="https://cdn.jsdelivr.net/npm/markmap-view@0.18.12/dist/browser/index.js"></script>',
    "<script>$viewJs</script>"
)
$html = $html.Replace(
    '<script src="https://cdn.jsdelivr.net/npm/markmap-toolbar@0.18.12/dist/index.js"></script>',
    "<script>$toolbarJs</script>"
)

[System.IO.File]::WriteAllText("$PSScriptRoot\$htmlFile", $html, [System.Text.Encoding]::UTF8)

Write-Host "Done! Opening $htmlFile..." -ForegroundColor Green

# Step 3: Open in browser
Start-Process $htmlFile
