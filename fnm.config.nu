# config.nu
$env.config = {
   hooks: {
    env_change: {
      PWD: [{ |before, after|
        if ('FNM_DIR' in $env) and ([.nvmrc .node-version] | path exists | any { |it| $it }) {
          fnm use
        }
      }]
    }
  }
}
