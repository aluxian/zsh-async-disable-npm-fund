function _npm_fund_disable() {
  command -v npm >/dev/null && { grep -q 'fund=false' ~/.npmrc || npm config set fund false; }
}

async_start_worker _npm_fund_disable
async_job _npm_fund_disable _npm_fund_disable
