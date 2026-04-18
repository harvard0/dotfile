if status is-interactive
# Commands to run in interactive sessions can go here
end

# starship
starship init fish | source

function fish_greeting
    # 1. 打印一段彩色的专属问候
    set_color magenta
    echo "Hello! Mizuki."
    set_color normal  # 恢复默认颜色，防止影响后续输出
    
    # 2. 打印一条分割线
    echo "--------------------------------"
    
    # 3. 自动运行 fastfetch 展示系统面板
    # 确保你已经安装了 fastfetch
    fastfetch
end

abbr -a ls eza --icons --group-directories-first
abbr -a ll eza -la --icons --group-directories-first
abbr -a lt eza --tree --icons --level=2
alias cat="batcat"
abbr -a find fd
abbr -a grep rg
abbr -a top btop
abbr -a lg lazygit
abbr -a cls clear
abbr -a py python
abbr -a del rm
abbr -a ff fastfetch

