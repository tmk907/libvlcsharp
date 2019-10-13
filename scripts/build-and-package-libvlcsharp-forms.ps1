Remove-Item ..\LibVLCSharp.Forms\bin -Force -Recurse
Remove-Item ..\LibVLCSharp.Forms\obj -Force -Recurse

$msbuild =  '"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe"'
iex ("& {0} {1}" -f $msbuild, "../LibVLCSharp.Forms/LibVLCSharp.Forms.csproj /t:Restore,Clean,Build /p:Configuration=Release")

robocopy  ..\LibVLCSharp.Forms\bin\Release\ . *.nupkg