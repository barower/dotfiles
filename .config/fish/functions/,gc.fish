function ,gc --wraps='nvim -c "Git difftool --cached"' --description 'alias ,gc=nvim -c "Git difftool --cached"'
  nvim -c "Git difftool --cached" $argv
        
end
