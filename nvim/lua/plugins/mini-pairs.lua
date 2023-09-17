-- automatically manage character pairs 
return  {
  'echasnovski/mini.pairs',
  version = false,
  config = function ()
    -- need to run setup to enable even when everything is default
    require('mini.pairs').setup()
  end
}
