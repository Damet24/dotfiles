
let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>x :x<CR>

noremap <Leader>th :botright new <Bar> :terminal<CR>
noremap <Leader>tv :botright vnew <Bar> :terminal<CR>
noremap <Leader>` :FloatermNew<CR>

nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffer<CR>
nmap <Leader>l :Lines<CR>

nmap <Leader>nt :NERDTreeToggle<CR>

nmap <Leader>C :!node %<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

