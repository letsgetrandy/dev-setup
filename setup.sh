#! /bin/bash


# install xcode command line tools if xcode-select 
# is present and tools are not installed
command -v xcode-select > /dev/null 2>&1 && {
  xcode-select -p || xcode-select --install
}

# install Homebrew if not found
command -v brew > /dev/null 2>&1 || {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# install silver searcher if missing
command -v ag > /dev/null 2>&1 || {
  brew install the_silver_searcher
}

# install platinum searcher if missing
command -v pt > /dev/null 2>&1 || {
  brew install the_platinum_searcher
}

# install platinum searcher if missing
command -v node > /dev/null 2>&1 || {
  brew install node; 
  npm install npm@latest -g
}

# install postgress if user chooses
read -r -p "Install Postgres? (y/N) " yn
if [[ $yn =~ ^[Yy] ]]; then
  brew install postgresql
  echo "would install postgres"
fi

