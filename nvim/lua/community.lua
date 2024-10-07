-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.media.image-nvim" },
  { import = "astrocommunity.completion.cmp-emoji" },
  { import = "astrocommunity.completion.cmp-latex-symbols" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- import/override with your plugins folder
}
