:set mouse=a
:set number
:set relativenumber
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set autoindent

call plug#begin()
Plug 'nathom/filetype.nvim'
Plug 'tpope/vim-fugitive' " Плагин для работы с Git
Plug 'vim-airline/vim-airline' " Плагин для улучшения состояния строки состояния (статусной строки)
Plug 'vim-airline/vim-airline-themes' " Тема для vim-airline
Plug 'preservim/nerdtree' " Плагин для файлового менеджера (дерево файлов)
Plug 'ap/vim-css-color' " Подсветка CSS-цветов в коде
Plug 'rafi/awesome-vim-colorschemes' " Набор тем для vim
Plug 'w0rp/ale' " Плагин для статического анализа кода и предупреждений об ошибках
Plug 'deoplete-plugins/deoplete-jedi' " Плагин для автодополнения с использованием Jedi (Python)
Plug 'davidhalter/jedi-vim' " Плагин для автодополнения с использованием Jedi (Python)
Plug 'ryanoasis/vim-devicons' " Иконки для файлов в vim
Plug '3rd/image.nvim' " Поддержка изображений в vim
Plug 'chrisbra/csv.vim' " Плагин для работы с CSV файлами
Plug 'goerz/jupytext.vim' " Плагин для работы с Jupyter-ноутбуками
Plug 'plasticboy/vim-markdown' " Плагин для улучшения работы с Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' } " Плагин для предпросмотра Markdown в браузере
Plug 'godlygeek/tabular' " Плагин для табулирования текста в Markdown
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Плагин для автодополнения (deoplete)
call plug#end()

" Настройки для 
nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <C-n> :NERDTree<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-f> :NERDTreeFind<CR>

" Настройки для Python
let g:ale_linters = {
\   'python': ['flake8', 'pylint', 'mypy']
\}
let g:ale_fixers = {
\   'python': ['black']
\}
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_pylint_executable = 'pylint'
let g:ale_python_mypy_executable = 'mypy'

" Разрешить автоматическое исправление при сохранении
let g:ale_fix_on_save = 1

" Что то связанное с CSV
let g:csv_no_conceal = 1
let g:csv_highlight_column = 0

" Настройки для удобства работы
let g:markdown_folding = 1  " Включить сворачивание разделов

noremap <C-\> :botright split<CR>:term<CR>:resize 10<CR>

" Включаем deoplete
let g:deoplete#enable_at_startup = 1

