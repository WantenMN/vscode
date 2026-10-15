{
  buildVscode,
  fetchurl,
  lib,
  stdenv,
}:

buildVscode {
  pname = "vscode-insiders";
  executableName = "code-insiders";
  longName = "Visual Studio Code - Insiders";
  shortName = "Code - Insiders";
  version = "1.142.0-insider";
  rev = "e9eaf94e8bb01badde47d2518e16d3e1cdab1dd9";
  commandLineArgs = "";
  useVSCodeRipgrep = false;
  sourceExecutableName = "code-insiders";
  src = fetchurl {
    name = "VSCode-Insiders-1.142.0-insider.tar.gz";
    url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e9eaf94e8bb01badde47d2518e16d3e1cdab1dd9/code-insider-x64-1791854654.tar.gz";
    hash = "sha256-Z6rng8NhA3IPjIbEGnJV7VpAnoeyqaCMwtG8ROF7moQ=";
  };
  tests = { };
  sourceRoot = "";
  vscodeServer = null;
  updateScript = null;
  dontFixup = stdenv.hostPlatform.isDarwin;
  hasVsceSign = true;
  meta = {
    description = "Code editor developed by Microsoft (Insiders)";
    mainProgram = "code-insiders";
    homepage = "https://code.visualstudio.com/";
    license = lib.licenses.unfree;
    platforms = [ "x86_64-linux" ];
  };
}
