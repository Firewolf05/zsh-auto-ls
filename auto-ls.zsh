auto_ls() {
	emulate -L zsh
  if [[ $(pwd) == "$HOME/.trash" ]]; then 
    exa --all --icons
  elif [[ ! $(pwd) == "$HOME/.config" ]]; then 
    exa --color=always --group-directories-first --icons
  fi
}
if [[ ! " ${chpwd_functions[*]} " =~ "auto_ls" ]]; then
  chpwd_functions=(auto_ls $chpwd_functions)
fi
