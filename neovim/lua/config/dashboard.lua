local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_header = {
  "                                                               ",
  "                                                               ",
  "                                                               ",
  "       ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗        ",
  "       ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║        ",
  "       ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║        ",
  "       ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║        ",
  "       ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║        ",
  "       ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝        ",
  "                                                               ",
  "                                                               ",
}

db.custom_center = {
  { icon = '  ',
    desc = 'Find  File                              ',
    action = 'FzfLua files',
    shortcut = 'SPC F' },
  { icon = '  ',
    desc = 'File Browser                            ',
    action = 'NvimTreeOpen',
    shortcut = 'SPC n t' },
  { icon = '  ',
    desc = 'Find  word                              ',
    action = 'FzfLua lines',
    shortcut = 'SPC L' },
}
