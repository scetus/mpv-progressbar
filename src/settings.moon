
helpText = { }

settings['hover-zone-height'] = 40
helpText['hover-zone-height'] = [[
Sets the height of the rectangular area at the bottom of the screen that expands
the progress bar and shows playback time information when the mouse is hovered
over it.
]]

settings['top-hover-zone-height'] = 40
helpText['top-hover-zone-height'] = [[
Sets the height of the rectangular area at the top of the screen that shows the
file name and system time when the mouse is hovered over it.
]]

settings['display-scale-factor'] = 1
helpText['display-scale-factor'] = [[
Acts as a multiplier to increase the size of every UI element. Useful for high-
DPI displays that cause the UI to be rendered too small (happens at least on
macOS).
]]

settings['default-style'] = [[\fnSource Sans Pro\b1\bord2\fs30\c&HFC799E&\3c&H2D2D2D&]]
helpText['default-style'] = [[
Default style that is applied to all UI elements. A string of ASS override tags.
Individual elements have their own style settings which override the tags here.
Changing the font will likely require changing the hover-time margin settings
and the offscreen-pos settings.
]]

settings['enable-bar'] = true
helpText['enable-bar'] = [[
Controls whether or not the progress bar is drawn at all. If this is disabled,
it also (naturally) disables the click-to-seek functionality.
]]

settings['bar-hide-inactive'] = false
helpText['bar-hide-inactive'] = [[
Causes the bar to not be drawn unless the mouse is hovering over it or a
request-display call is active. This is somewhat redundant with setting bar-
height-inactive=0, except that it can allow for very rudimentary context-
sensitive behavior because it can be toggled at runtime. For example, by using
the binding `f cycle pause; script-binding progressbar/toggle-inactive-bar`, it
is possible to have the bar be persistently present only in windowed or
fullscreen contexts, depending on the default setting.
]]

settings['bar-height-inactive'] = 2
helpText['bar-height-inactive'] = [[
Sets the height of the bar display when the mouse is not in the active zone and
there is no request-display active. A value of 0 or less will cause bar-hide-
inactive to be set to true and the bar height to be set to 1. This should result
in the desired behavior while avoiding annoying debug logging in mpv (libass
does not like zero-height objects).
]]

settings['bar-height-active'] = 8
helpText['bar-height-active'] = [[
Sets the height of the bar display when the mouse is in the active zone or
request-display is active. There is no logic attached to this, so 0 or negative
values may have unexpected results.
]]

settings['seek-precision'] = 'exact'
helpText['seek-precision'] = [[
Affects precision of seeks due to clicks on the progress bar. Should be 'exact' or
'keyframes'. Exact is slightly slower, but won't jump around between two
different times when clicking in the same place.

Actually, this gets passed directly into the `seek` command, so the value can be
any of the arguments supported by mpv, though the ones above are the only ones
that really make sense.
]]

settings['bar-default-style'] = [[\bord0]]
helpText['bar-default-style'] = [[
A string of ASS override tags that get applied to all three layers of the bar:
progress, cache, and background. You probably don't want to remove \bord0 unless
your default-style includes it.
]]

settings['bar-foreground-style'] = ''
helpText['bar-foreground-style'] = [[
A string of ASS override tags that get applied only to the progress layer of the
bar.
]]

settings['bar-cache-style'] = [[\c&H515151&]]
helpText['bar-cache-style'] = [[
A string of ASS override tags that get applied only to the cache layer of the
bar. The default sets only the color.
]]

settings['bar-background-style'] = [[\c&H2D2D2D&]]
helpText['bar-background-style'] = [[
A string of ASS override tags that get applied only to the background layer of
the bar. The default sets only the color.
]]

settings['enable-elapsed-time'] = true
helpText['enable-elapsed-time'] = [[
Sets whether or not the elapsed time is displayed at all.
]]
settings['elapsed-style'] = ''
helpText['elapsed-style'] = [[
A string of ASS override tags that get applied only to the elapsed time display.
]]

settings['elapsed-left-margin'] = 4
helpText['elapsed-left-margin'] = [[
Controls how far from the left edge of the window the elapsed time display is
positioned.
]]

settings['elapsed-bottom-margin'] = 0
helpText['elapsed-bottom-margin'] = [[
Controls how far above the expanded progress bar the elapsed time display is
positioned.
]]


settings['enable-remaining-time'] = true
helpText['enable-remaining-time'] = [[
Sets whether or not the remaining time is displayed at all.
]]

settings['remaining-style'] = ''
helpText['remaining-style'] = [[
A string of ASS override tags that get applied only to the remaining time
display.
]]

settings['remaining-right-margin'] = 4
helpText['remaining-right-margin'] = [[
Controls how far from the right edge of the window the remaining time display is
positioned.
]]

settings['remaining-bottom-margin'] = 0
helpText['remaining-bottom-margin'] = [[
Controls how far above the expanded progress bar the remaining time display is
positioned.
]]

settings['enable-hover-time'] = true
helpText['enable-hover-time'] = [[
Sets whether or not the calculated time corresponding to the mouse position
is displayed when the mouse hovers over the progress bar.
]]
settings['hover-time-style'] = [[\fs26]]
helpText['hover-time-style'] = [[
A string of ASS override tags that get applied only to the hover time display.
Unfortunately, due to the way the hover time display is animated, alpha values
set here will be overridden. This is subject to change in future versions.
]]

settings['hover-time-left-margin'] = 120
helpText['hover-time-left-margin'] = [[
Controls how close to the left edge of the window the hover time display can
get. If this value is too small, it will end up overlapping the elapsed time
display.
]]

settings['hover-time-right-margin'] = 130
helpText['hover-time-right-margin'] = [[
Controls how close to the right edge of the window the hover time display can
get. If this value is too small, it will end up overlapping the remaining time
display.
]]

settings['hover-time-bottom-margin'] = 0
helpText['hover-time-bottom-margin'] = [[
Controls how far above the expanded progress bar the remaining time display is
positioned.
]]

settings['enable-title'] = true
helpText['enable-title'] = [[
Sets whether or not the video title is displayed at all.
]]

settings['title-style'] = ''
helpText['title-style'] = [[
A string of ASS override tags that get applied only to the video title display.
]]

settings['title-left-margin'] = 4
helpText['title-left-margin'] = [[
Controls how far from the left edge of the window the video title display is
positioned.
]]

settings['title-top-margin'] = 0
helpText['title-top-margin'] = [[
Controls how far from the top edge of the window the video title display is
positioned.
]]

settings['title-print-to-cli'] = true
helpText['title-print-to-cli'] = [[
Controls whether or not the script logs the video title and playlist position
to the console every time a new video starts.
]]

settings['enable-system-time'] = true
helpText['enable-system-time'] = [[
Sets whether or not the system time is displayed at all.
]]

settings['system-time-style'] = ''
helpText['system-time-style'] = [[
A string of ASS override tags that get applied only to the system time display.
]]

settings['system-time-format'] = '%H:%M'
helpText['system-time-format'] = [[
Sets the format used for the system time display. This must be a strftime-
compatible format string.
]]

settings['system-time-right-margin'] = 4
helpText['system-time-right-margin'] = [[
Controls how far from the right edge of the window the system time display is
positioned.
]]

settings['system-time-top-margin'] = 0
helpText['system-time-top-margin'] = [[
Controls how far from the top edge of the window the system time display is
positioned.
]]

settings['pause-indicator'] = true
helpText['pause-indicator'] = [[
Sets whether or not the pause indicator is displayed. The pause indicator is a
momentary icon that flashes in the middle of the screen, similar to youtube.
]]

settings['pause-indicator-foreground-style'] = [[\c&HFC799E&]]
helpText['pause-indicator-foreground-style'] = [[
A string of ASS override tags that get applied only to the foreground of the
pause indicator.
]]

settings['pause-indicator-background-style'] = [[\c&H2D2D2D&]]
helpText['pause-indicator-background-style'] = [[
A string of ASS override tags that get applied only to the background of the
pause indicator.
]]

settings['enable-chapter-markers'] = true
helpText['enable-chapter-markers'] = [[
Sets whether or not the progress bar is decorated with chapter markers. Due to
the way the chapter markers are currently implemented, videos with a large
number of chapters may slow down the script somewhat, but I have yet to run
into this being a problem.
]]

settings['chapter-marker-width'] = 2
helpText['chapter-marker-width'] = [[
Controls the width of each chapter marker when the progress bar is inactive.
]]

settings['chapter-marker-width-active'] = 4
helpText['chapter-marker-width-active'] = [[
Controls the width of each chapter marker when the progress bar is active.
]]

settings['chapter-marker-active-height-fraction'] = 1
helpText['chapter-marker-active-height-fraction'] = [[
Modifies the height of the chapter markers when the progress bar is active. Acts
as a multiplier on the height of the active progress bar. A value greater than 1
will cause the markers to be taller than the expanded progress bar, whereas a
value less than 1 will cause them to be shorter.
]]

settings['chapter-marker-before-style'] = [[\c&HFC799E&]]
helpText['chapter-marker-before-style'] = [[
A string of ASS override tags that get applied only to chapter markers that have
not yet been passed.
]]

settings['chapter-marker-after-style'] = [[\c&H2D2D2D&]]
helpText['chapter-marker-after-style'] = [[
A string of ASS override tags that get applied only to chapter markers that have
already been passed.
]]

settings['request-display-duration'] = 1
helpText['request-display-duration'] = [[
Sets the amount of time in seconds that the UI stays on the screen after it
receives a request-display signal. A value of 0 will keep the display on screen
only as long as the key bound to it is held down.
]]

settings['redraw-period'] = 0.03
helpText['redraw-period'] = [[
Controls how often the display is redrawn, in seconds. This does not seem to
significantly affect the smoothness of animations, and it is subject to the
accuracy limits imposed by the scheduler mpv uses. Probably not worth changing
unless you have major performance problems.
]]

settings['animation-duration'] = 0.25
helpText['animation-duration'] = [[
Controls how long the UI animations take. A value of 0 disables all animations
(which breaks the pause indicator).
]]

settings['elapsed-offscreen-pos'] = -100
helpText['elapsed-offscreen-pos'] = [[
Controls how far off the left side of the window the elapsed time display tries
to move when it is inactive. If you use a non-default font, this value may need
to be tweaked. If this value is not far enough off-screen, the elapsed display
will disappear without animating all the way off-screen. Positive values will
cause the display to animate the wrong direction.
]]

settings['remaining-offscreen-pos'] = -100
helpText['remaining-offscreen-pos'] = [[
Controls how far off the left side of the window the remaining time display
tries to move when it is inactive. If you use a non-default font, this value may
need to be tweaked. If this value is not far enough off-screen, the elapsed
display will disappear without animating all the way off-screen. Positive values
will cause the display to animate the wrong direction.
]]

settings['system-time-offscreen-pos'] = -100
helpText['system-time-offscreen-pos'] = [[
Controls how far off the left side of the window the system time display tries
to move when it is inactive. If you use a non-default font, this value may need
to be tweaked. If this value is not far enough off-screen, the elapsed display
will disappear without animating all the way off-screen. Positive values will
cause the display to animate the wrong direction.
]]

settings['title-offscreen-pos'] = -40
helpText['title-offscreen-pos'] = [[
Controls how far off the left side of the window the video title display tries
to move when it is inactive. If you use a non-default font, this value may need
to be tweaked. If this value is not far enough off-screen, the elapsed display
will disappear without animating all the way off-screen. Positive values will
cause the display to animate the wrong direction.
]]

options.read_options settings, script_name

if settings['bar-height-inactive'] <= 0
	settings['bar-hide-inactive'] = true
	-- This is set to 1 so that we don't end up with libass spamming messages
	-- about failing to stroke zero-height object.
	settings['bar-height-inactive'] = 1
