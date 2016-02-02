-- simple script that loads a checkpoint and prints its opts

require 'torch'
require 'nn'
require 'nngraph'

require 'util.OneHot'
require 'util.misc'

cmd = torch.CmdLine()
cmd:text()
cmd:text('Load a checkpoint and print its options and validation losses.')
cmd:text()
cmd:text('Options')
cmd:argument('-model','model to load')
cmd:text()

-- parse input params
opt = cmd:parse(arg)

local model = torch.load(opt.model)

print('opt:')
print(model.opt)
print('val losses:')
print(model.val_losses)

