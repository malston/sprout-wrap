alias be='bundle exec'
alias gs='git status'

#export ANDROID_HOME="/Applications/android-sdk-macosx"
export GEMDEV=1

function uat {
  cf $@ --app spring-music-uat
}

function staging {
  cf $@ --app spring-music-staging
}

function production {
  cf $@ --app spring-music-production
}
