Grégory Karékinian Dot Files
============================

These are config files to set up a system the way I like it. It is forked from [Ryan Bates's dotfiles](http://github.com/ryanb/dotfiles).


Installation
------------

    git clone git://github.com/gkarekinian/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install


Environment
-----------

I am running on Mac OS X, but it will likely work on Linux as well with 
minor fiddling. I use bash.


Features
--------

I normally place all of my coding projects in ~/code, so this directory 
can easily be accessed (and tab completed) with the "c" command.

    c railsca<tab>

There is also an "h" command which behaves similar, but acts on the 
home path.

    h doc<tab>

Tab completion is also added to rake and cap commands:

    rake db:mi<tab>
    cap de<tab>

To speed things up, the results are cached in local `.rake_tasks~` and 
`.cap_tasks~`. It is smart enough to expire the cache automatically in 
most cases, but you can simply remove the files to flush the cache.


Credits
-------

[Ryan Bates](http://github.com/ryanb) for his original dotfiles. 👍

