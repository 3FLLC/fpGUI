.* This file is encoded using IBM850 encoding
.* :encoding=IBM850:
:userdoc.
:docprof toc=1234.
:title.A Quick Guide to fpGUI

.* This as a marco definition
.nameit symbol=pubdate text='August 2015'
.nameit symbol=dv text='DocView'
.nameit symbol=fpg text='fpGUI'


:h1.A Quick Guide to using &fpg.
:font facename='Helvetica-20:antialias=true'.
.* :artwork name='img0.bmp' align=center.
:lines align=center.
A Quick Guide to using
.br
fpGUI Toolkit
.br
:elines.
:font facename=default.
:lines align=center.
Written by Graeme Geldenhuys
:artwork align=center name='images/wizard_pink.bmp'.
.br
.br
All Rights Reserved. Copyright (c) 2015 by Graeme Geldenhuys
.br
:elines.

:table cols="13 20".
:row.
:c.Version
:c.v0.1
:row.
:c.Pub Date
:c.&pubdate.
:etable.


:h2.License
:cgraphic.
���������
 License
���������
:ecgraphic.
:p.
This work is licensed under the Creative Commons Attribution-NonCommercial-
ShareAlike 3.0 Unported License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter
to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

:h2.Preface
:cgraphic.
���������
 Preface
���������
:ecgraphic.
:p.
I've been meaning to start this book back in 2013, but always seemed to find
other things to do. I've finally decided to put pen-to-paper (in a digital
way) and get started.
:p.
:hp2.What is fpGUI:ehp2.
:p.
fpGUI Toolkit (or the Free Pascal GUI Toolkit) is a multi-platform toolkit for
creating graphical user interfaces. Offering a complete set of custom drawn
widgets, fpGUI is suitable for projects ranging from small one-off tools to
complete application suites.
:p.
fpGUI is a 32bit and 64bit 2D graphics toolkit that doesn't rely on any huge
third party graphics libraries like GTK+ or Qt (and its dependencies). It
talks directly to the underlying graphics system (GDI, X11 etc). fpGUI is
supported on Unix, Linux, BSD, OpenSolaris, Mac OS X (via X11), Windows, and
embedded systems like ARM-Linux and WinCE.
:p.
fpGUI is open source and free software, licensed under a Modified LGPL
license. The toolkit has been implemented using the Object Pascal language,
and is meant for use with the Free Pascal compiler.
:p.
:hp2.Who This Book Is For:ehp2.
:p.
I've written this book for programmers who want to learn to use the &fpg.
toolkit, and that might not have used it, or similar toolkits before.
:p.
This book covers using &fpg. directly (no LCL involved). The Lazarus
LCL-fpGUI widgetset is not feature complete, and not nearly ready for real
usage. My hope is that somebody will eventually take control of that aspect of
LCL and make it into a usable LCL target.
:p.
But for now, lets look at &fpg. itself!

:h2.Colophon
:cgraphic.
����������
 Colophon
����������
:ecgraphic.
:p.
This is the first book that I wrote using IPF and related technologies, though
I have written many shorter articles or README-style documents with it. The
master text was written primarily with the EditPad Pro v7 text editor and
using my own IPF syntax and file navigation schemes.

:h2.A Brief History of &fpg.
:cgraphic.
��������������������������
 A Brief History of fpGUI
��������������������������
:ecgraphic.
:p.
circa 2006.
:p.
After developing many cross platform applications with Kylix and Delphi
I started getting very frustrated with the differences between the look and
behaviour of the applications under Linux and Windows. The code was also
riddled with IFDEF statements.
:p.
Then I stumbled across the Free Pascal and Lazarus projects. I thought this
is it, the answer to all my cross platform development problems. Unfortunately
after working with Lazarus for a few months I started finding more
and more issues with the widget sets, though the IDE was great.
:p.
The Lazarus LCL is a wrapper for each platforms native widget set. This
brought with it the same issues I experienced with Kylix and Delphi. This
got me thinking about how I could resolve this issue.
:p.
Then it hit me - implement the widgetset myself using Free Pascal! Painting
the widgets myself to get a consistent look and implementing a consistent
behaviour. Instead of reinventing the wheel, I thought I would do some
searching to see if there is another project I could contribute to, or that
could give me head start.
:p.
The first version of my widgetset was based around a heavily modified
version of the Light Pascal Toolkit [http://sourceforge.net/projects/lptk]. I
then discovered the discontinued
fpGUI and fpGFX projects. I tried to contact the original author to no
avail. The &fpg. code hasn't been touched in four years (since early 2002).
After studying the code for a few weeks, I came to the conclusion that fpGUI
is much closer to what I strived to accomplish with my modified LPTK. A
lot was still missing from &fpg. though.
:p.
After thinking long and hard, I decided to start my widgetset again, but
this time based on the work done in fpGUI and fpGFX. I also added to
the mix some good ideas I saw in Qt 4.1. After a few weeks I completed quite a
few things missing in fpGUI, but I still needed to do a lot more to get it
to the point where I could test drive it in a commercial application.
I set myself a list of
outstanding things which should get it to a usable level. I also added a lot of
documentation as there was no documentation included with the
original fpGUI and fpGFX projects. Documentation is important to attract
other developers in using the widgetset.

:h2.Part I: Basic &fpg.
:h3.Getting Started
:h3.Creating Dialogs
:h3.Creating Main Windows
:h3.Implementing Application Functionality
:h3.Creating Custom Widgets
:h2.Part II: Intermediate &fpg.
:h3.Layout Management
:h3.Event Processing
:h3.2D Graphics with AggPas
:h3.Drag and Drop
:h3.Databases
:h3.Internationalization
:h3.Providing Online Help
:h3.Multithreading
:h2.Installing &fpg.
:h3.Standalone Setup

:h3.Integration with Lazarus IDE
:cgraphic.
������������������������������
 Integration with Lazarus IDE
������������������������������
:ecgraphic.
:p.
For that you follow these simple steps:

:p.
:hp2.Lets configure Lazarus to have a new project type::ehp2.
:ol.
:li.Run Lazarus and open the fpgui_toolkit.lpk package found in the
.br
&fpg. code: <fpgui>/src/corelib/[x11|gdi]/fpgui_toolkit.lpk
.br
Click "Compile".

:li.Now open the IDE add-on package, compile and install.
.br
Open <fpgui>/extras/lazarus_ide/fpgui_ide.lpk
.br
Click "Compile" & "Install".
.br
Lazarus will rebuild and restart itself.
:eol.

:p.
:hp2.Now to create a &fpg. application::ehp2.
:ol.
:li.Run Lazarus
:li.Select "Project -> New Project..." and select "fpGUI Toolkit Application".
:eol.

:p.
All done, you have create your first fpGUI Toolkit application using
Lazarus IDE as your editor! :)

:h4.UI Designer
:cgraphic.
�������������
 UI Designer
�������������
:ecgraphic.

:p.
This page describes how &fpg.'s forms designer application, UIDesigner, can be
integrated with Lazarus IDE. Thus allowing you to launch the forms designer
with a simple keyboard shortcut, and automatically load the current file being
edited by Lazarus IDE.
:p.
For this to work, we opted to use the External Tools feature of Lazarus.
Alternative methods exist, but that requires recompiling the IDE - and that
seems like just to much effort.
:p.
The process is quite simple. While in Lazarus, simply select the menu items
":hp2.Tools:ehp2. -> :hp2.Configure External Tools...:ehp2.". A dialog will
appear. Select the :hp2.Add:ehp2. button, and then fill in the details as
shown in the screen below. Please use the correct path to the UIDesigner
executable.
:p.
Once you have entered all the details, click the OK button, and you have setup
the UIDesigner inside Lazarus IDE.

:cgraphic.
���������������������������������������������������Ŀ
� Edit Tool                                       X �
���������������������������������������������������Ĵ
� Title:              fpGUI UIDesigner              �
� Program Filename:   /path/to/uidesigner           �
� Parameters:         $EdFile()                     �
�                                                   �
� ��Options��                                       �
� [ ]                      [ ]                      �
� [ ]                                               �
�                                                   �
� ��Key��                                           �
� [x] Shift  [ ] Alt  [x] Ctrl     [ F12         ]  �
�                                                   �
�  ����Ŀ                          ������Ŀ ����Ŀ  �
�  �Help�                          �Cancel� � OK �  �
�  ������                          �������� ������  �
�����������������������������������������������������
:ecgraphic.
.* :artwork align=left name='qguide_images/laz_uidesigner_setup.bmp'.

:h4.Docview
:cgraphic.
���������
 Docview
���������
:ecgraphic.

:cgraphic.
���������������������������������������������������Ŀ
� Edit Tool                                       X �
���������������������������������������������������Ĵ
� Title:              DocView                       �
� Program Filename:   /path/to/docview              �
� Parameters:         fpgui+fcl+rtl -k $CurToken()  �
�                                                   �
� ��Options��                                       �
� [ ]                      [ ]                      �
� [ ]                                               �
�                                                   �
� ��Key��                                           �
� [ ] Shift  [ ] Alt  [ ] Ctrl     [ F1          ]  �
�                                                   �
�  ����Ŀ                          ������Ŀ ����Ŀ  �
�  �Help�                          �Cancel� � OK �  �
�  ������                          �������� ������  �
�����������������������������������������������������
:ecgraphic.
.* :artwork align=left name='qguide_images/laz_docview_setup.bmp'.

:h3.Integration with MSEide
:h3.Integration with EditPad Pro
:h3.Integration with FP Text IDE

:euserdoc.
