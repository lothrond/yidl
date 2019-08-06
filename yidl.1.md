% YIDL(1) yidl Manual Page
% lothrond <lothrond@posteo.us>
% August 2018

# NAME

yidl - youtube/invidious downloader

# SYNOPSIS

*yidl* [*-h*] [*--help*] [*--copyright*] [*--warranty*]\
*yidl* [*--free*] [*--nonfree*] [*--nocolor*] [*-d*|*\--dir*] *DIR* [*-m*|*\--music*] [*-v*|*\--video*] *URL*

# DESCRIPTION

This is a small *bash*(1) script for interacting with *youtube-dl*(1), strictly assuming content from youtube. This program will also work with invidio.us and supports both android and gnu/linux platforms. For android platforms, this program strictly assumes the use of the termux app. With that, the entire purpose of this program is to make using common *youtube-dl*(1) commands easier, while also eliminating the need for config files, etc. Agian, for commonly issued commands. Meaning, many common tasks may be issued within one command line.  

# OPTIONS

-d, \--dir
:	Specify a download location (path).

-h, \--help
:   Show usage information. *-h* will show a short summary, while *\--help* should show the appropriate *man*(1) page.

-m, \--music
:	Download music from *URL*.

-v, \--video
:	Download Video from *URL*.

\--free
:   Prefer \"free\" formats. I.E, convert all audio content to ogg format, and convert all video formats to webm format. This is already assumed by default, so there is really no need to specify this argument.

\--nonfree
:	Prefer "non-free" formats. I.E, convert all audio content to mp3 format, and convert all video content to mp4 format. If you experience issues with downloaded content due to a media player, you may need to specify a more "standard", and usually "non-free" format, using this argument.

\--nocolor
:	Disable all colored output.

\--warrranty
:	Show warranty information.

\--copyright
:	Show copyright information.

# SEE ALSO

youtube-dl(1), ffmpeg(1)
