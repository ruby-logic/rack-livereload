docker run -p3000:3000 --rm --name rack-livereload -ite TERM \
  -v ~/.ssh:/home/user/.ssh:ro \
  -v ~/.zsh/git-completion.bash:/home/user/git-completion.bash \
  -v ~/.gitconfig:/home/user/.gitconfig:ro \
  -v ~/.gitignore_global:/home/user/.gitignore_global:ro \
  -v $(pwd):/home/user/app \
  rubylogic/ruby-node-$(uname -a | grep -q x86_64 && echo 'intel' || echo 'm1'):2.5.9-v14.21.3
