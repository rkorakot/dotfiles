GR='\[\e[32m\]' # Green
WH='\[\e[37m\]' # White
YE='\[\e[33m\]' # Yellow
RE='\[\e[31m\]' # Red
NC='\[\e[0m\]'  # Reset
export PS1="${GR}\u${NC} ${WH}:${NC} ${YE}\w${NC}\n${RE}\$ ${NC}"
