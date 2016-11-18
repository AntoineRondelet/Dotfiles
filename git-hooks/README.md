Git hooks
==========

1. Put the hook into .git/hooks: mv ~/dotfiles/git-hooks/the-hook-you-want path/to/your/git/repo/.git/hooks
> Eg: mv ~/dotfiles/git-hooks/pre-push $GOPATH/your-project/.git/hooks

- Remember: 
1. The hooks has to have the same name as the `sample` in .git/hooks
2. Your hook has to be without extension
3. Give the good rights: chmod ug+x your-hook
