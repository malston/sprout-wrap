
# This lets you move around using the Go tool's path names:
# $ gocd .../lint
# /tmp/gows/src/github.com/golang/lint
# $
function gocd { 
  cd `go list -f '{{.Dir}}' $1` 
}
