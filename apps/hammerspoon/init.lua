-- Two window layouts, one hotkey each.
--   Home (docked): everything in the left focus zone, Logseq in the right zone
--   Cafe (laptop): everything maximized (not fullscreen)
--   Halves: everything in the left half, Logseq in the right half

local NOTES_APP = "Logseq-OG"
local SPLIT = 2/3          -- width of the left focus zone; set to 0.6 for a 60/40 split

hs.window.animationDuration = 0   -- snap instantly, no animation

-- Standard, visible, non-fullscreen windows on the current Space
local function windows()
  local result = {}
  for _, win in ipairs(hs.window.orderedWindows()) do
    if win:isStandard() and win:isVisible() and not win:isFullScreen() then
      table.insert(result, win)
    end
  end
  return result
end

local function isNotes(win)
  local app = win:application()
  return app and app:name() == NOTES_APP
end

-- Everything in the left zone, Logseq in the right zone, split at `ratio`
local function splitLayout(ratio)
  local screen = hs.screen.primaryScreen()
  local left  = { x = 0,     y = 0, w = ratio,     h = 1 }
  local right = { x = ratio, y = 0, w = 1 - ratio, h = 1 }
  for _, win in ipairs(windows()) do
    win:move(isNotes(win) and right or left, screen, true)
  end
end

local function homeLayout()     splitLayout(SPLIT) end
local function halvesLayout()   splitLayout(0.5)   end

local function cafeLayout()
  for _, win in ipairs(windows()) do
    win:maximize()
  end
end

-- Hyper = Cmd+Ctrl+Opt+Shift (Caps Lock via Karabiner-Elements)
local hyper = { "cmd", "ctrl", "alt", "shift" }

-- Keyboard shortcuts: Hyper+1 (home), Hyper+2 (cafe), Hyper+3 (50/50 with Logseq right)
hs.hotkey.bind(hyper, "1", homeLayout)
hs.hotkey.bind(hyper, "2", cafeLayout)
hs.hotkey.bind(hyper, "3", halvesLayout)

-- URL triggers, for Raycast Quicklinks:
--   hammerspoon://layout-home, hammerspoon://layout-cafe, hammerspoon://layout-halves
hs.urlevent.bind("layout-home", homeLayout)
hs.urlevent.bind("layout-cafe", cafeLayout)
hs.urlevent.bind("layout-halves", halvesLayout)