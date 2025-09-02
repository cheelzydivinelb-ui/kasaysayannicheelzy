# Stage all changes
git add -A

# Check if there are any staged changes
if (git diff --cached --quiet) {
    Write-Host "No changes to commit."
} else {
    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    git commit -m "Auto-update on $timestamp"
    git push origin main
    Write-Host "Changes pushed successfully at $timestamp"
}
