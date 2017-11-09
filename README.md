# **MAME system shutdown plugin** #

Lua plugin for the MAME UI to shut down a Windows system from the menu.

## Installation
* Create a new directory called 'shutdown' in the 'plugins' subdirectory of your MAME installation.
* Copy the files 'init.lua' and 'plugin.json' into this directory.
* Fire up MAME.

## Usage
* Launch a machine from within MAME.
* Pull up the config menu by (by default hit TAB on keyboard).
* Select 'Plugin Options' and then 'System shutdown...'.
* Choose 'Yes' to immediately shut down the Windows based system.

## How it works
Using the MAME Lua bindings to interact with the MAME UI this plugin just adds
a menu item that executes "shutdown /s /t 0" on the underlying operating
system (Windows). This will cause the PC to shut down gracefully without having
to leave MAME.

I wrote this plugin because my cabinet setup doesn't have a keyboard
or mouse connected by default and I wanted a quick and dirty way to safely
shut down with my configured controls from within MAME.

## To do
* Support other operating systems.
