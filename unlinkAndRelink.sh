# 先確認斷掉所有 link
# 在重新link 軟體, 不行的話可以考慮brwe link --force [軟體] 
ls -1 /usr/local/Library/LinkedKegs | while read line; do echo $line; brew unlink $line; brew link --force $line; done

brew list -1 | while read line; do brew unlink $line; brew link $line; done

