#!/bin/bash

# asdf 
asdf plugin add awscli
asdf plugin add azure-cli
asdf plugin add golang
asdf plugin add java
asdf plugin add kotlin
asdf plugin add nodejs
asdf plugin add python
asdf plugin add ruby
asdf plugin add rust
asdf plugin add terraform
asdf plugin add terragrunt
asdf plugin add kubectl
asdf plugin add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git

asdf install kubectl latest
asdf install golang latest