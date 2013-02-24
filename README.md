CCMenu for Rails
================

Install CCMenu Desktop Client
-----------------------------

OSX users can download and install CCMenu from http://ccmenu.sourceforge.net/

CCMenu Configuration
--------------------

Add a new project in your CCMenu desktop client with the url as **http://your_app.com/cc.xml**

Gem installation
----------------

Add this to your Gemfile

    gem "cc_menu"

Usage
-----

Add this to your routes.rb

    mount CcMenu::Engine => "/cc.xml"

From anywhere in your Ruby on Rails application use one of the below:

    - CcMenu::Status.set :status => :success, :activity => :sleeping
    ![Success Sleeping](https://github.com/unnitallman/cc_menu_rails/blob/master/doc/success_sleeping.png?raw=true)

    - CcMenu::Status.set :status => :success, :activity => :building
    - CcMenu::Status.set :status => :failed, :activity => :sleeping
    - CcMenu::Status.set :status => :failed, :activity => :building

