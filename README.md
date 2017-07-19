# dell-printer-pckit-script
This is an old "WIP" script that scrapes Dell 23XX DN printers for the presence of a warning to replace the Photo Conductor.

The was part of a monitoring system that I was trying to create. The support techs would get flooded with calls about these Dell 23XX DN printers, often times with complaints such as "It suddenly stopped printing." Well we'd connect to the managment web interface and see the error message "Replace PC Kit". Of course they had seen the error when it first popped up 6 weeks ago but it kept printing so it must not mean anything right? That error comes up when the photo conductor is reaching it's end of life and needs to be replaced soon. Yes it will work for a time all up until it didn't. 

After explaining that yes that is the reason why it stopped for the 1,000th time I knew there had to be a better way. Therefore, I started working on this script that could connect to the printer and check for the existence of the error message. The idea was that after finding this error it could print out a reminder to the site to advise them to replace the Photo Conductor. 

Eventually these old dinosaurs got replaced with a newer HP model printer which came with it's own set of headaches but at least this problem was solved.
