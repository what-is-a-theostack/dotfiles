UnDo
   local cells = {}
g@C2
---@field has_fg boolean
---5
      has_bg = color.bg ~
g@C!
       
g@C$
.   return { Attribute = { Intensity = type } }
+   return { Attribute = { Italic = true } }
.   return { Attribute = { Underline = type } }
   __call = function(_, ...)
      return { ... }
   end,
   return setmetatable({
      segments = {},
   }, self)
   color = color or {}
   ---@type FormatItem[]
   local items = {}
   if color.bg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Background = { Color = color.bg } })
   end
   if color.fg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Foreground = { Color = color.fg } })
   end
)   if attributes and #attributes > 0 then
+      for _, attr_ in ipairs(attributes) do
#         table.insert(items, attr_)
      end
   end
'   table.insert(items, { Text = text })
)   table.insert(items, 'ResetAttributes')
   ---@type Cells.Segment
    self.segments[segment_id] = {
      items = items,
      has_bg = color.bg ~= nil,
      has_fg = color.fg ~= nil,
   }
   return self
(   if not self.segments[segment_id] then
7      error('Segment "' .. segment_id .. '" not found')
   end
"   self:_check_segment(segment_id)
3   local idx = #self.segments[segment_id].items - 1
9   self.segments[segment_id].items[idx] = { Text = text }
   return self
:   assert(type(color) == 'table', 'Color must be a table')
"   self:_check_segment(segment_id)
2   local has_bg = self.segments[segment_id].has_bg
2   local has_fg = self.segments[segment_id].has_fg
   if color.bg then
,      if has_bg and color.bg == 'UNSET' then
9         table.remove(self.segments[segment_id].items, 1)
         has_bg = false
         goto bg_end
      end
      if has_bg then
S         self.segments[segment_id].items[1] = { Background = { Color = color.bg } }
      else
`         table.insert(self.segments[segment_id].items, 1, { Background = { Color = color.bg } })
         has_bg = true
      end
   end
   ::bg_end::
   if color.fg then
&      local fg_idx = has_bg and 2 or 1
,      if has_fg and color.fg == 'UNSET' then
>         table.remove(self.segments[segment_id].items, fg_idx)
         has_fg = false
         goto fg_end
      end
      if has_fg then
X         self.segments[segment_id].items[fg_idx] = { Foreground = { Color = color.fg } }
      else
         table.insert(
,            self.segments[segment_id].items,
            fg_idx,
1            { Foreground = { Color = color.fg } }
         )
         has_fg = true
      end
   end
   ::fg_end::
,   self.segments[segment_id].has_bg = has_bg
,   self.segments[segment_id].has_fg = has_fg
   return self
g@C%
return Cells
g@C1
   local cells = {}
   for _, id in ipairs(ids) do
      self:_check_segment(id)
6      for _, item in pairs(self.segments[id].items) do
"         table.insert(cells, item)
      end
   end
   return cells
   local cells = {}
,   for _, segment in pairs(self.segments) do
,      for _, item in pairs(segment.items) do
"         table.insert(cells, item)
      end
   end
   return cells
   self.segments = {}5
1---@param segment_id string|number the segment id
A---@param color Cells.SegmentColors the bg and fg colors for text
7function Cells:update_segment_colors(segment_id, color)
:   assert(type(color) == 'table', 'Color must be a table')
"   self:_check_segment(segment_id)
2   local has_bg = self.segments[segment_id].has_bg
2   local has_fg = self.segments[segment_id].has_fg
   if color.bg then
,      if has_bg and color.bg == 'UNSET' then
7       table.remove(self.segments[segment_id].items, 1)
         has_bg = false
         goto bg_end
      end
      if has_bg then
S         self.segments[segment_id].items[1] = { Background = { Color = color.bg } }
      else
`         table.insert(self.segments[segment_id].items, 1, { Background = { Color = color.bg } })
         has_bg = true
      end
   end
   ::bg_end::
   if color.fg then
&      local fg_idx = has_bg and 2 or 1
,      if has_fg and color.fg == 'UNSET' then
>         table.remove(self.segments[segment_id].items, fg_idx)
         has_fg = false
       
    goto fg_end
      end
      if has_fg then
X         self.segments[segment_id].items[fg_idx] = { Foreground = { Color = color.fg } }
      else
         table.insert(
,            self.segments[segment_id].items,
            fg_idx,
1            { Foreground = { Color = color.fg } }
         )
         has_fg = true
      end
   end
   ::fg_end::
,   self.segments[segment_id].has_bg = has_bg
,   self.segments[segment_id].has_fg = has_fg
   return self
end if color.bg then5
1---@param segment_id string|number the segment id
&---@param text string the text to push
B---@param color? Cells.SegmentColors the bg and fg colors for text
:---@param attributes? FormatItem.Attribute[] use bold text
?function Cells:add_segment(segment_id, text, color, attributes)
   color = color or {}
   ---@type FormatItem[]
   local items = {}
   if color.bg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Background = { Color = color.bg } })
   end
   if color.fg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Foreground = { Color = color.fg } })
   end
)   if attributes and #attributes > 0 then
+      for _, attr_ in ipairs(attributes) do
#         table.insert(items, attr_)
      end
   end
'   table.insert(items, { Text = text })
*   table.insert(items, 'RuesetAttributes')
   ---@type Cells.Segment
    self.segments[segment_id] = {
      items = items,
      has_bg = color.bg ~
        = nil,
      has_fg = color.fg ~= nil,
   }
   return self
end5
3---@return {Attribute: FormatItem.Attribute.Italic}
attr.italic = function()
+   return { Attribute = { Italic = true } }
/---@param type 'None'|'Single'|'Double'|'Curly'
6---@return {Attribute: FormatItem.Attribute.Underline}
attr.underline = function(type)
.   return { Attribute = { Underline = type } }
H---@alias Cells.SegmentColors {bg?: string|'UNSET', fg?: string|'UNSET'}
---@class Cells.Segment
---@field items FormatItem[]
---@field has_bg boolean
---@field has_fg boolean
t---Format item generator for `wezterm.format` (ref: <https://wezfurlong.org/wezterm/config/lua/wezterm/format.html>)
---@class Cells
6---@field segments table<string|number, Cells.Segment>
local Cells = {}
Cells.__index = Cells
---@class Cells.Attributes
b---@field intensity fun(type: 'Bold'|'Half'|'Normal'): {Attribute: FormatItem.Attribute.Intensity}
l---@field underline fun(type: 'None'|'Single'|'Double'|'Curly'): {Attribute: FormatItem.Attribute.Underline}
>---@field italic fun(): {Attribute: FormatItem.Attribute.Itali
attr.underline = func}
C---@overload fun(...: FormatItem.Attribute): FormatItem.Attribute[]
!Cells.attr = setmetatable(attr, {
   __call = function(_, ...)
      return { ... }
   end,
function Cells:new()
   return setmetatable({
      segments = {},
   }, self)ction(type)
   }, self)ction(type)5
I---@alias Cells.SegmentColors {ubg?: string|'UNSET', fg?: string|'UNSET'}5
--[[ FormatItems: Begin ]]
---@class FormatItem.Text
---@field Text string
(---@class FormatItem.Attribute.Intensity
*---@field Intensity 'Bold'|'Half'|'Normal'
%---@class FormatItem.Attribute.Italic
---@field Italic boolean
(---@class FormatItem.Attribute.Underline
4---@field Underline 'None'|'Single'|'Double'|'Curly'
---@class FormatItem.Attribute
m---@field Attribute FormatItem.Attribute.Intensity|FormatItem.Attribute.Italic|FormatItem.Attribute.Underline
---@class FormatItem.Foreground
$---@field Background {Color: string}
---@class FormatItem.Background
$---@field Foreground {Color: string}
,---@alias FormatItem.Reset 'ResetAttributes'
v---@alias FormatItem FormatItem.Text|FormatItem.Attribute|FormatItem.Foreground|FormatItem.Background|FormatItem.Reset
--[[ FormatItems: End ]]
local attr = {}
%---@param type 'Bold'|'Half'|'Normal'
6---@return {Attribute: FormatItem.Attribute.Intensity}
attr.intensity = function(type)
.   return { Attribute = { Intensity = type } }
---@return {Attribute: For
3---@return {Attribute: FormatItem.Attribute.Italic}
attr.italic = function()
+   return { Attribute = { Italic = true } }
/---@param type 'None'|'Single'|'Double'|'Curly'
6---@return {Attribute: FormatItem.Attribute.Underline}
attr.underline = function(type)
.   return { Attribute = { Underline = type } }
H---@alias Cells.SegmentColors {bg?: string|'UNSET', fg?: string|'UNSET'}
---@class Cells.Segment
---@field items FormatItem[]
---@field has_bg boolean
---@field has_fg boolean
t---Format item generator for `wezterm.format` (ref: <https://wezfurlong.org/wezterm/config/lua/wezterm/format.html>)
---@class Cells
6---@field segments table<string|number, Cells.Segment>
local Cells = {}
Cells.__index = Cells
---@class Cells.Attributes
b---@field intensity fun(type: 'Bold'|'Half'|'Normal'): {Attribute: FormatItem.Attribute.Intensity}
l---@field underline fun(type: 'None'|'Single'|'Double'|'Curly'): {Attribute: FormatItem.Attribute.Underline}
@---@field italic fun(): {Attribute: FormatItem.Attribute.Italic}
---@overload fun(...: FormatI
B---@field has_bg boolean    tem.Attribute): FormatItem.Attribute[]
!Cells.attr = setmetatable(attr, {
   __call = function(_, ...)
      return { ... }
   end,
function Cells:new()
   return setmetatable({
      segments = {},
   }, self)
1---@param segment_id string|number the segment id
&---@param text string the text to push
B---@param color? Cells.SegmentColors the bg and fg colors for text
:---@param attributes? FormatItem.Attribute[] use bold text
?function Cells:add_segment(segment_id, text, color, attributes)
   color = color or {}
   ---@type FormatItem[]
   local items = {}
   if color.bg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Background = { Color = color.bg } })
   end
   if color.fg then
M      assert(color.bg ~= 'UNSET', 'Cannot use UNSET when adding new segment')
@      table.insert(items, { Foreground = { Color = color.fg } })
   end
)   if attributes and #attributes > 0 then
+      for _, attr_ in ipairs(attributes) do
         table.insert(items,
$---@param attributes? FormatI attr_)
      end
   end
'   table.insert(items, { Text = text })
)   table.insert(items, 'ResetAttributes')
   ---@type Cells.Segment
    self.segments[segment_id] = {
      items = items,
      has_bg = color.bg ~= nil,
      has_fg = color.fg ~= nil,
   }
   return self
---@private
1---@param segment_id string|number the segment id
)function Cells:_check_segment(segment_id)
(   if not self.segments[segment_id] then
7      error('Segment "' .. segment_id .. '" not found')
   end
1---@param segment_id string|number the segment id
&---@param text string the text to push
4function Cells:update_segment_text(segment_id, text)
"   self:_check_segment(segment_id)
3   local idx = #self.segments[segment_id].items - 1
9   self.segments[segment_id].items[idx] = { Text = text }
   return self
1---@param segment_id string|number the segment id
A---@param color Cells.SegmentColors the bg and fg colors for text
7function Cells:update_segment_colors(segment_id, color)
Q   assert(type(color) == 'table', 'Color must be a ttem.Attribute[] use bold text
"---@param segment_id string|able')
"   self:_check_segment(segment_id)
2   local has_bg = self.segments[segment_id].has_bg
2   local has_fg = self.segments[segment_id].has_fg
   if color.bg then
,      if has_bg and color.bg == 'UNSET' then
9         table.remove(self.segments[segment_id].items, 1)
         has_bg = false
         goto bg_end
      end
      if has_bg then
S         self.segments[segment_id].items[1] = { Background = { Color = color.bg } }
      else
`         table.insert(self.segments[segment_id].items, 1, { Background = { Color = color.bg } })
         has_bg = true
      end
   end
   ::bg_end::
   if color.fg then
&      local fg_idx = has_bg and 2 or 1
,      if has_fg and color.fg == 'UNSET' then
>         table.remove(self.segments[segment_id].items, fg_idx)
         has_fg = false
         goto fg_end
      end
      if has_fg then
X         self.segments[segment_id].items[fg_idx] = { Foreground = { Color = color.fg } }
      else
         table.insert(
,            self.segments[segment_id].items,
%            fg_inumber the segment id
      if has_bg then   dx,
1            { Foreground = { Color = color.fg } }
         )
         has_fg = true
      end
   end
   ::fg_end::
,   self.segments[segment_id].has_bg = has_bg
,   self.segments[segment_id].has_fg = has_fg
   return self
2---@param ids table<string|number> the segment ids
---@return FormatItem[]
function Cells:render(ids)
   local cells = {}
   for _, id in ipairs(ids) do
      self:_check_segment(id)
6      for _, item in pairs(self.segments[id].items) do
"         table.insert(cells, item)
      end
   end
   return cells
---@return FormatItem[]
function Cells:render_all()
   local cells = {}
,   for _, segment in pairs(self.segments) do
,      for _, item in pairs(segment.items) do
"         table.insert(cells, item)
      end
   end
   return cells
function Cells:reset()
   self.segments = {}
return Cells5
