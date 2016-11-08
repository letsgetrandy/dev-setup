#! /bin/bash


# install xcode command line tools if xcode-select 
# is present and tools are not installed
command -v xcode-select > /dev/null 2>&1 && {
  echo "xcode-select was found"
  xcode-select -p || echo "would install command line tools"
}

# install Homebrew if not found
command -v brew > /dev/null 2>&1 || {
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "would install homebrew"
}

# install silver searcher if missing
command -v ag > /dev/null 2>&1 || {
  # brew install the_silver_searcher
  echo "would install ag"
}

# install platinum searcher if missing
command -v pt > /dev/null 2>&1 || {
  # brew install the_platinum_searcher
  echo "would install pt"
}

# install platinum searcher if missing
command -v node > /dev/null 2>&1 || {
  # brew install node; 
  # npm install npm@latest -g
  echo "would install node"
}

read -r -p "Install Postgres? (y/N) " yn
if [[ $yn =~ ^[Yy] ]]; then
  echo "would install postgres"
fi

