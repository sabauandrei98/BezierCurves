# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glfw.Debug:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a


PostBuild.Boing.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Boing.app/Contents/MacOS/Boing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Boing.app/Contents/MacOS/Boing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Boing.app/Contents/MacOS/Boing


PostBuild.Gears.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Gears.app/Contents/MacOS/Gears
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Gears.app/Contents/MacOS/Gears:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Gears.app/Contents/MacOS/Gears


PostBuild.Heightmap.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Heightmap.app/Contents/MacOS/Heightmap
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Heightmap.app/Contents/MacOS/Heightmap:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Heightmap.app/Contents/MacOS/Heightmap


PostBuild.Particles.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Particles.app/Contents/MacOS/Particles
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Particles.app/Contents/MacOS/Particles:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Particles.app/Contents/MacOS/Particles


PostBuild.Simple.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Simple.app/Contents/MacOS/Simple
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Simple.app/Contents/MacOS/Simple:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Simple.app/Contents/MacOS/Simple


PostBuild.SplitView.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/SplitView.app/Contents/MacOS/SplitView
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/SplitView.app/Contents/MacOS/SplitView:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/SplitView.app/Contents/MacOS/SplitView


PostBuild.Wave.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Wave.app/Contents/MacOS/Wave
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Wave.app/Contents/MacOS/Wave:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Debug/Wave.app/Contents/MacOS/Wave


PostBuild.accuracy.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/accuracy.app/Contents/MacOS/accuracy
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/accuracy.app/Contents/MacOS/accuracy:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/accuracy.app/Contents/MacOS/accuracy


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/clipboard
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/clipboard:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursor
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursor:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursor


PostBuild.cursoranim.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursoranim.app/Contents/MacOS/cursoranim
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursoranim.app/Contents/MacOS/cursoranim:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/cursoranim.app/Contents/MacOS/cursoranim


PostBuild.defaults.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/defaults
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/defaults:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/defaults


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/empty.app/Contents/MacOS/empty
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/empty.app/Contents/MacOS/empty:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/events
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/events:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/events


PostBuild.fsaa.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/fsaa
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/fsaa:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/fsaa


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/gamma
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/gamma:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/glfwinfo
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/glfwinfo:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/glfwinfo


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/iconify
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/iconify:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/joysticks
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/joysticks:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/monitors
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/monitors:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/monitors


PostBuild.peter.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/peter
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/peter:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/peter


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/reopen
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/reopen:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/sharing.app/Contents/MacOS/sharing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/sharing.app/Contents/MacOS/sharing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/tearing.app/Contents/MacOS/tearing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/tearing.app/Contents/MacOS/tearing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/threads.app/Contents/MacOS/threads
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/threads.app/Contents/MacOS/threads:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/threads.app/Contents/MacOS/threads


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/title.app/Contents/MacOS/title
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/title.app/Contents/MacOS/title:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/title.app/Contents/MacOS/title


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/windows.app/Contents/MacOS/windows
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/windows.app/Contents/MacOS/windows:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Debug/windows.app/Contents/MacOS/windows


PostBuild.glfw.Release:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a


PostBuild.Boing.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Boing.app/Contents/MacOS/Boing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Boing.app/Contents/MacOS/Boing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Boing.app/Contents/MacOS/Boing


PostBuild.Gears.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Gears.app/Contents/MacOS/Gears
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Gears.app/Contents/MacOS/Gears:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Gears.app/Contents/MacOS/Gears


PostBuild.Heightmap.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Heightmap.app/Contents/MacOS/Heightmap
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Heightmap.app/Contents/MacOS/Heightmap:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Heightmap.app/Contents/MacOS/Heightmap


PostBuild.Particles.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Particles.app/Contents/MacOS/Particles
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Particles.app/Contents/MacOS/Particles:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Particles.app/Contents/MacOS/Particles


PostBuild.Simple.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Simple.app/Contents/MacOS/Simple
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Simple.app/Contents/MacOS/Simple:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Simple.app/Contents/MacOS/Simple


PostBuild.SplitView.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/SplitView.app/Contents/MacOS/SplitView
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/SplitView.app/Contents/MacOS/SplitView:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/SplitView.app/Contents/MacOS/SplitView


PostBuild.Wave.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Wave.app/Contents/MacOS/Wave
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Wave.app/Contents/MacOS/Wave:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/Release/Wave.app/Contents/MacOS/Wave


PostBuild.accuracy.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/accuracy.app/Contents/MacOS/accuracy
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/accuracy.app/Contents/MacOS/accuracy:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/accuracy.app/Contents/MacOS/accuracy


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/clipboard
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/clipboard:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursor
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursor:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursor


PostBuild.cursoranim.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursoranim.app/Contents/MacOS/cursoranim
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursoranim.app/Contents/MacOS/cursoranim:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/cursoranim.app/Contents/MacOS/cursoranim


PostBuild.defaults.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/defaults
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/defaults:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/defaults


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/empty.app/Contents/MacOS/empty
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/empty.app/Contents/MacOS/empty:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/events
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/events:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/events


PostBuild.fsaa.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/fsaa
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/fsaa:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/fsaa


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/gamma
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/gamma:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/glfwinfo
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/glfwinfo:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/glfwinfo


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/iconify
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/iconify:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/joysticks
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/joysticks:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/monitors
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/monitors:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/monitors


PostBuild.peter.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/peter
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/peter:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/peter


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/reopen
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/reopen:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/sharing.app/Contents/MacOS/sharing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/sharing.app/Contents/MacOS/sharing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/tearing.app/Contents/MacOS/tearing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/tearing.app/Contents/MacOS/tearing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/threads.app/Contents/MacOS/threads
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/threads.app/Contents/MacOS/threads:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/threads.app/Contents/MacOS/threads


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/title.app/Contents/MacOS/title
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/title.app/Contents/MacOS/title:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/title.app/Contents/MacOS/title


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/windows.app/Contents/MacOS/windows
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/windows.app/Contents/MacOS/windows:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/Release/windows.app/Contents/MacOS/windows


PostBuild.glfw.MinSizeRel:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a


PostBuild.Boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Boing.app/Contents/MacOS/Boing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Boing.app/Contents/MacOS/Boing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Boing.app/Contents/MacOS/Boing


PostBuild.Gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Gears.app/Contents/MacOS/Gears
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Gears.app/Contents/MacOS/Gears:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Gears.app/Contents/MacOS/Gears


PostBuild.Heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Heightmap.app/Contents/MacOS/Heightmap
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Heightmap.app/Contents/MacOS/Heightmap:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Heightmap.app/Contents/MacOS/Heightmap


PostBuild.Particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Particles.app/Contents/MacOS/Particles
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Particles.app/Contents/MacOS/Particles:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Particles.app/Contents/MacOS/Particles


PostBuild.Simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Simple.app/Contents/MacOS/Simple
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Simple.app/Contents/MacOS/Simple:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Simple.app/Contents/MacOS/Simple


PostBuild.SplitView.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/SplitView.app/Contents/MacOS/SplitView
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/SplitView.app/Contents/MacOS/SplitView:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/SplitView.app/Contents/MacOS/SplitView


PostBuild.Wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Wave.app/Contents/MacOS/Wave
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Wave.app/Contents/MacOS/Wave:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/MinSizeRel/Wave.app/Contents/MacOS/Wave


PostBuild.accuracy.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/accuracy.app/Contents/MacOS/accuracy
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/accuracy.app/Contents/MacOS/accuracy:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/accuracy.app/Contents/MacOS/accuracy


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/clipboard
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/clipboard:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursor
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursor:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursor


PostBuild.cursoranim.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursoranim.app/Contents/MacOS/cursoranim
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursoranim.app/Contents/MacOS/cursoranim:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/cursoranim.app/Contents/MacOS/cursoranim


PostBuild.defaults.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/defaults
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/defaults:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/defaults


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/empty.app/Contents/MacOS/empty
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/empty.app/Contents/MacOS/empty:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/events
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/events:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/events


PostBuild.fsaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/fsaa
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/fsaa:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/fsaa


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/gamma
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/gamma:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/glfwinfo
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/glfwinfo:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/glfwinfo


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/iconify
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/iconify:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/joysticks
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/joysticks:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/monitors
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/monitors:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/monitors


PostBuild.peter.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/peter
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/peter:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/peter


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/reopen
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/reopen:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/threads.app/Contents/MacOS/threads
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/threads.app/Contents/MacOS/threads:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/threads.app/Contents/MacOS/threads


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/title.app/Contents/MacOS/title
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/title.app/Contents/MacOS/title:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/title.app/Contents/MacOS/title


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/windows.app/Contents/MacOS/windows
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/windows.app/Contents/MacOS/windows:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/MinSizeRel/windows.app/Contents/MacOS/windows


PostBuild.glfw.RelWithDebInfo:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a


PostBuild.Boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Boing.app/Contents/MacOS/Boing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Boing.app/Contents/MacOS/Boing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Boing.app/Contents/MacOS/Boing


PostBuild.Gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Gears.app/Contents/MacOS/Gears
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Gears.app/Contents/MacOS/Gears:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Gears.app/Contents/MacOS/Gears


PostBuild.Heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Heightmap.app/Contents/MacOS/Heightmap
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Heightmap.app/Contents/MacOS/Heightmap:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Heightmap.app/Contents/MacOS/Heightmap


PostBuild.Particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Particles.app/Contents/MacOS/Particles
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Particles.app/Contents/MacOS/Particles:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Particles.app/Contents/MacOS/Particles


PostBuild.Simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Simple.app/Contents/MacOS/Simple
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Simple.app/Contents/MacOS/Simple:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Simple.app/Contents/MacOS/Simple


PostBuild.SplitView.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/SplitView.app/Contents/MacOS/SplitView
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/SplitView.app/Contents/MacOS/SplitView:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/SplitView.app/Contents/MacOS/SplitView


PostBuild.Wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Wave.app/Contents/MacOS/Wave
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Wave.app/Contents/MacOS/Wave:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/examples/RelWithDebInfo/Wave.app/Contents/MacOS/Wave


PostBuild.accuracy.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/accuracy.app/Contents/MacOS/accuracy
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/accuracy.app/Contents/MacOS/accuracy:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/accuracy.app/Contents/MacOS/accuracy


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/clipboard
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/clipboard:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursor
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursor:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursor


PostBuild.cursoranim.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursoranim.app/Contents/MacOS/cursoranim
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursoranim.app/Contents/MacOS/cursoranim:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/cursoranim.app/Contents/MacOS/cursoranim


PostBuild.defaults.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/defaults
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/defaults:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/defaults


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/events
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/events:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/events


PostBuild.fsaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/fsaa
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/fsaa:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/fsaa


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/gamma
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/gamma:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/glfwinfo
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/glfwinfo:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/glfwinfo


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/iconify
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/iconify:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/joysticks
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/joysticks:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/monitors
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/monitors:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/monitors


PostBuild.peter.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/peter
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/peter:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/peter


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/reopen
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/reopen:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/title.app/Contents/MacOS/title
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/title.app/Contents/MacOS/title:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/title.app/Contents/MacOS/title


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows:\
	/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Debug/libglfw3.a:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/MinSizeRel/libglfw3.a:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/RelWithDebInfo/libglfw3.a:
/Users/andreis4/Desktop/Telenav/Game/glfw-3.1.1/lib-MacOS-10.8/src/Release/libglfw3.a:
