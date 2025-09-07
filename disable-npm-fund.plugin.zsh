function _npm_fund_disable() {
  command -v npm >/dev/null && { grep -q 'fund=false' ~/.npmrc || npm config set fund false; }
}

_npm_fund_disable &!

