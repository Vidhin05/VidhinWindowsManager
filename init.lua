-- Copyright (c) 2018 Vidhin Parmar
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this 
-- software and associated documentation files (the "Software"), to deal in the Software 
-- without restriction, including without limitation the rights to use, copy, modify, merge,
-- publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
-- to whom the Software is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies
-- or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
-- PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
-- FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
-- OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
-- DEALINGS IN THE SOFTWARE.

--- === Vidhin Windows Manager: Snapping and Tiling ===
-- Move windows using keyboard, resize them to halves, thirds and quarters! Functionality like the Magnet App, For OSX.
-- Author: Vidhin Parmar
-- E-mail: ividhin@gmail.com
-- Github Username: Vidhin05

hs.window.animationDuration = 0

units = {
  left         = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  right        = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  up           = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  down         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },

  topleft      = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
  topright     = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
  bottomleft   = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },
  bottomright  = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },

  left13       = { x = 0.00, y = 0.00, w = 0.33, h = 1.00 },
  left23       = { x = 0.00, y = 0.00, w = 0.67, h = 1.00 },
  center13     = { x = 0.33, y = 0.00, w = 0.33, h = 1.00 },
  right23      = { x = 0.33, y = 0.00, w = 0.67, h = 1.00 },
  right13      = { x = 0.67, y = 0.00, w = 0.33, h = 1.00 },

  center       = { x = 0.20, y = 0.10, w = 0.60, h = 0.80 },
  maximum      = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}

mash = { 'ctrl', 'alt' }
hs.hotkey.bind(mash, 'left',   function() hs.window.focusedWindow():move(units.left,        nil, true) end)
hs.hotkey.bind(mash, 'right',  function() hs.window.focusedWindow():move(units.right,       nil, true) end)
hs.hotkey.bind(mash, 'up',     function() hs.window.focusedWindow():move(units.up,          nil, true) end)
hs.hotkey.bind(mash, 'down',   function() hs.window.focusedWindow():move(units.down,        nil, true) end)

hs.hotkey.bind(mash, 'u',      function() hs.window.focusedWindow():move(units.topleft,     nil, true) end)
hs.hotkey.bind(mash, 'i',      function() hs.window.focusedWindow():move(units.topright,    nil, true) end)
hs.hotkey.bind(mash, 'j',      function() hs.window.focusedWindow():move(units.bottomleft,  nil, true) end)
hs.hotkey.bind(mash, 'k',      function() hs.window.focusedWindow():move(units.bottomright, nil, true) end)

hs.hotkey.bind(mash, 'd',      function() hs.window.focusedWindow():move(units.left13,      nil, true) end)
hs.hotkey.bind(mash, 'e',      function() hs.window.focusedWindow():move(units.left23,      nil, true) end)
hs.hotkey.bind(mash, 'f',      function() hs.window.focusedWindow():move(units.center13,    nil, true) end)
hs.hotkey.bind(mash, 'g',      function() hs.window.focusedWindow():move(units.right23,     nil, true) end)
hs.hotkey.bind(mash, 't',      function() hs.window.focusedWindow():move(units.right13,     nil, true) end)


hs.hotkey.bind(mash, 'c',      function() hs.window.focusedWindow():move(units.center,      nil, true) end)
hs.hotkey.bind(mash, 'return', function() hs.window.focusedWindow():move(units.maximum,     nil, true) end)
