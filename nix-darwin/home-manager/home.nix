UnDo
0    dotDir = "/Users/matthewholden/.config/zsh";5
    dotDir = .config/zsh";5
  pr5
  programs.vscode5
"      enableZshIntegration = true;5
      
      export DOTNET_ROOT=/us5
!      export DOTNET_ROOT=/usr/loc5
(      export DOTNET_ROOT=/usr/local/shar5
+      export DOTNET_ROOT=/usr/local/share/d5
0      export DOTNET_ROOT=/usr/local/share/dotnet5
    
    export PATH=$PATH:$DOTNET5
%    export PATH=$PATH:$DOTNET_ROOT:$D5
.    export DOTNET_ROOT=/usr/local/share/dotnet5
(    export DOTNET_ROOT=/usr/local/share/5
/    export DOTNET_ROOT=/usr/local/share/dotnet/5
0    export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/5
    
    initExtr5
    initExtra = '';5
    initExtra = '';;5
    initExtra = ''''5
    ''5
    initExtra = ''5
    '';5
    initExtra = '''
3      # zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete()
3  local completions=("$(dotnet complete "$words")")
J  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
&    _arguments '*::arguments: _normal'
    return
  fi
;  # This is not a variable assignment, don't remove spaces!
$  _values = "${(ps:\n:)completions}"
#compdef _dotnet_zsh_complete dotnet
    ''';5
    
    
    
    eval "$(pyenv init -)"5
%    eval "$(pyenv virtualenv-init -)"5
#    export PYENV_ROOT="$HOME/.pyenv5
    
    export PATH=$PATH:$HOME/5
    export PATH=$PATH:$HOME/.5
&    export PATH=$PATH:$HOME/.local/bin5
G    export PATH=$PATH:$HOME/.local/bin:$HOME/apache-streampipes-0.95.1.5
H    export PATH=$PATH:$HOME/.local/bin:$HOME/apache-streampipes-0.95.1/i5
Q    export PATH=$PATH:$HOME/.local/bin:$HOME/apache-streampipes-0.95.1/installer/5
T    export PATH=$PATH:$HOME/.local/bin:$HOME/apache-streampipes-0.95.1/installer/cli5
    
    export PATH="$HOME/ap5
1    export PATH="$HOME/apache-streampipes-0.95.1/5
;    export PATH="$HOME/apache-streampipes-0.95.1/installer/5
E    export PATH="$HOME/apache-streampipes-0.95.1/installer/cli:$PATH"5
C    export PATH="$HOME/apache-streampipes-0.95/installer/cli:$PATH"5
    
^  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm5
r  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"5
    
    
    export DOTNET_TOOLS="$DO5
5    export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools5
0    export PATH=$PATH:$DOTNET_ROOT:$DOTNET_TOOLS5
1    export PATH=$PATH:$DOTNET_ROOT:$DOTNET_TOOLS"5
    
      
    exp5
    export LOCAL_BIN=5
    export BIN=5
    export BIN="$HOME5
    export LOCAL_BIN="$HOME5
    export LOCAL_BIN="$HOME/.5
    export LOCAL_BIN="$HOME/.l5
    
"    export STREAMPIPES_CLI="$HOME/5
5    export STREAMPIPES_CLI="$HOME/apache-streampipes/5
2    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS"5
5    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$L"5
A    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$ST"5
    
    export5
    
    export RD_BIN="$HOME5
    export RD_BIN="$HOME/.5
O    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:"5
P    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$R5
&    export PATH=$PATH:$HOME/.local/bin5
>    export PATH="$HOME/apache-streampipes/installer/cli:$PATH"5
%    export PATH="$HOME/.rd/bin:$PATH"5
    
    export PYEN5
    export PYENV_ROOT="$HOME/.5
    
    [[ -d 5
V    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
C    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"5
    export NVM_DIR="$HOME/.nvm"
`    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
t    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"5
    
    
#        export NVM_DIR="$HOME/.nvm"5
    
V    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
    
    DOTNET_PATHS="$DO5
    
    BIN_PATH5
    
    EXTRA_CLI_PATHS="$S5
H    [[ -d $PYENV_ROOT/bin ]] && export PYENV_BIN="$PYENV_ROOT/bin:$PATH"5
    
    PYTHON_PATHS="$P5
    PYTHON_PATHS="$PYENV_ROOT:P5
    export NVM_DIR="$HOME/.nvm"5
#        export NVM_DIR="$HOME/.nvm"5
    
    NODE_PATHS="$N5
$    export PYENV_ROOT="$HOME/.pyenv"5
V    export PATH="$PATH:$DOTNET_ROOT:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
K    export PATH="$PATH:$:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
J    export PATH="$PATH:$$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
I    export PATH="$PATH:$DOTNET_TOOLS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
=    export PATH="$PATH:$:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
?    export PATH="$PATH:$DO:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
I    export PATH="$PATH:$DOTNET_PATHS:$LOCAL_BIN:$STREAMPIPES_CLI:$RD_BIN"5
@    export PATH="$PATH:$DOTNET_PATHS:$:$STREAMPIPES_CLI:$RD_BIN"5
A    export PATH="$PATH:$DOTNET_PATHS:$B:$STREAMPIPES_CLI:$RD_BIN"5
I    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$STREAMPIPES_CLI:$RD_BIN"5
;    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$E:$RD_BIN"5
I    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$EXTRA_CLI_PATHS:$RD_BIN"5
C    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$EXTRA_CLI_PATHS:$"5
D    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$EXTRA_CLI_PATHS:NO"5
L    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$EXTRA_CLI_PATHS:NODE_PATHS"5
      
    export KUBECONFIG="$HOME5
      
     export DOTFILES_DIR="$HOME/.5
    export KUBECONFIG="$DOTFILE5
0    export KUBECONFIG="$DOTFILES_DIR/kubeconfig"5
+    export KUBECONFIG="$DOTFILES_DIR/kube."5
1    export KUBECONFIG="$DOTFILES_DIR/kube/config"5
2    export KUBECONFIG="$DOTFILES_DIR/kube/config."5
0    export KUBECONFIG="$DOTFILES_DIR/kube/confi"5
4    export KUBECONFIG_DIR="$DOTFILES_DIR/kube/confi"5
-    KUBECONFIG_DIR="$DOTFILES_DIR/kube/confi"5
    
    
"    export KUBECONFIG_MINIKUBE="$K5
9    export KUBECONFIG_MINIKUBE="$KUBECONFIG_DIR/minikube"5
:    export KUBECONFIG_MINIKUBE="$KUBECONFIG_DIR/minikube."5
>    export KUBECONFIG_MINIKUBE="$KUBECONFIG_DIR/minikube.yaml"5
D    export KUBECONFIG_RANCHER_SERVER="$KUBECONFIG_DIR/minikube.yaml"5
    export KU5
    export KUBECONFIG_IIOT="$K5
    export KUB5
6    export KUBECONFIG_IIOT="$KUBECONFIG_DIR/iiot.yaml"5
C    export KUBECONFIG_RANCHER_SERVER="$KUBECONFIG_DIR/rancher.yaml"5
>    export KUBECONFIG_MINIKUBE="$KUBECONFIG_DIR/minikube.yaml"5
    # Configure Completions5
    eval "$(starship init zsh)"5
M    export PATH="$PATH:$DOTNET_PATHS:$BIN_PATHS:$EXTRA_CLI_PATHS:$NODE_PATHS"5
      
    # Set custom dotfile5
$    # Set custom dotfiles directory 5
    # TODO: Rename from .5
$    # TODO: Rename from .config to .5
      
    # 
    
!    export KUBECONFIG_RANCHER="$K5
.    export KUBECONFIG_MINIKUBE="minikube.yaml"5
'    KUBECONFIG_MINIKUBE="minikube.yaml"5
    KUBECONFIG_RANCHER="$K5
     KUBECONFIG_RANCHER="rancher.5
    KUBECONFIG_RANCHER="rancher5
"    KUBECONFIG_MINIKUBE="minikube"5
     KUBECONFIG_RANCHER="rancher"5
    
    KUBECONFIG_IIOT="iiot"5
    export KUBE5
    export KUBECONFIG="$KUBECONFIG_DIR/$KUBECONFIG_MINIKUBE:$KUBECONFIG_DIR/$KUBECONFIG_RANCHER:$KUBECONFIG_DIR/$KUBECONFIG_IIOT"5
0    KUBECONFIG_MAIN="$DOTFILES_DIR/kube/configs"5
7    KUBECONFIG_MAIN="$DOTFILES_DIR/kube/configs/config"5
    5
      
