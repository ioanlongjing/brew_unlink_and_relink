# 先確認斷掉所有 link
ls -1 /usr/local/Library/LinkedKegs | while read line; do echo $line; brew unlink $line; brew link --force $line; done

# 重新連結所有link
brew list -1 | while read line; do brew unlink $line; brew link $line; done

