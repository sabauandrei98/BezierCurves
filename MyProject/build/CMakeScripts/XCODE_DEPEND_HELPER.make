# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.RacingGame.Debug:
/Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/Debug/RacingGame:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/Debug/RacingGame


PostBuild.RacingGame.Release:
/Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/Release/RacingGame:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/Release/RacingGame


PostBuild.RacingGame.MinSizeRel:
/Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/MinSizeRel/RacingGame:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/MinSizeRel/RacingGame


PostBuild.RacingGame.RelWithDebInfo:
/Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/RelWithDebInfo/RacingGame:
	/bin/rm -f /Users/andreis4/Desktop/Telenav/TelenavGame/Game/MyProject/build/RelWithDebInfo/RacingGame




# For each target create a dummy ruleso the target does not have to exist
