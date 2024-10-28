@echo off
setlocal

set repos=("https://github.com/fluffyloopy/fluffyloopy.github.io" "http://tea.azunyasa.com/azu/mvlice-dawn")

for %%a in %repos% do (
  echo Pushing to %%a...
  git push %%a

  if errorlevel 1 (
    echo Error pushing to %%a
    goto :end
  )
)

echo Push successful!

goto :end

:end
endlocal