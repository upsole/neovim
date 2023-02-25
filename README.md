# My neovim files
```
    ~~ all the neovim files are installed in 
	     .local/share/nvim. delete to actually uninstall it
	~~ :checkhealth is also ur friend when debugging
```

1. yay -S neovim-git (works on 0.9x versions)
2. move this dir to .config/ and launch nvim. Packer will begin installing all 
the plugins  	
3. Manual Installs:
	fd and rg for Telescope (find more info through :checkhealth telescope)
	-If you want python lsp, create a virtual env, place it in this dir as  
	as nvim_env & install the pynvim package with pip

## Cool Features of My Build
			check out the keybinds with <leader>nv and search for keys.lua files
			leader key is spacebar by deafult
			vanilla vim keybinds are respected. most extra keybinds use ctrl+key
			or leader+ 
			
	~ Saner defaults for windowsplits & buffers
    ~ snippets (easy syntax to customize)
	~ Telescope is great, helps you jump through files (Bindings on lua/keys.lua)
	~ Mason for LSPs and formatters ! 
	~ TSInstall ~languagename for syntax hightlighting
	~ colorscheme x to change theme

