#!/bin/bash
  
# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.ll "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"

# bash
alias git_current_branch="git symbolic-ref --short HEAD"
alias urls="factorial urls"
alias graph="factorila open graphiql"
alias front="factorial open frontend"
alias e2e="npm run cypress:gitpod"
alias amend!="git commit --amend --no-edit"
alias undo="git reset HEAD~1 --soft"

# history
PATH=$PATH:~/fzf-0.33.0/bin/
history -s pnpm graphql-codegen
history -s pnpm cypress:gitpod
history -s pnpm exec tsc --noEmit
history -s rails autodiscovery:generate_graphql_schema
history -s rails finance:generate_graphql_schema
history -s rails db:seeds:finance
history -s rails db:seeds:finance_e2e
history -s rails db:seeds:reset_finance
history -s rails finance:install:migrations
history -s rails finance:sections:import_spain
history -s rails finance:sections:set_section_type
history -s packwerk update-deprecations
history -s git add '**/finance/*'
history -s bundle exec rbprettier --write '**/finance/**/*.rb'
history -s bundle exec tapioca dsl
history -s bundle exec rubocop-changes
history -s bundle exec rails data:migrate:status
history -s bundle exec rspec 
history -s bundle exec rails data:migrate:up VERSIONS=
history -s bundle exec rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 1234 --skip_wait_for_start -- bin/rails s -p 3000 -b 0.0.0.0
history -s semgrep --include "backend/*" --json --exclude-rule do_not_expand_components --exclude-rule do_not_expand_design_system
history -s semgrep --include "frontend/*" --json --exclude-rule do_not_expand_components --exclude-rule do_not_expand_design_system
history -s rake db:rollback STEP=1
history -s rails g migration CreateFinanceJournalSequences --component=finance
history -s bundle exec rspec --pattern='components/finance/**/spec/**/*_spec.rb'
history -s CYPRESS_BASE_URL="`gp url 8080`" CYPRESS_API_ENDPOINT="`gp url 5000`" npx cypress run --browser chrome --spec cypress/integration/finance/
history -s make profile.check profiles=backend command="make wait.backend" > /dev/null
history -s make profile.check profiles=frontend,frontend-preview command="make wait.frontend" /dev/null
export HISTCONTROL=ignoreboth:erasedups
source "/home/gitpod/fzf-0.33.0/shell/key-bindings.bash"

