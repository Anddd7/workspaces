# setup dotnet

```sh
# install dotnet via asdf and set the home
. ~/.asdf/plugins/dotnet-core/set-dotnet-home.zsh

# link dotnet to /usr/local/bin
ln -sF $DOTNET_ROOT/dotnet /usr/local/bin/dotnet

# create project
dotnet new console -o myApp
```
