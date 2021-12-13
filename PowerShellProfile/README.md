# PowerShell Profile

## Prerequisites

The profile is not very smart yet and is not checking if any modules which is importing even installed on the machine.
You have to install the depending modules manualy before installing the profile.

* [Font: Hack from Nerd Fonts](https://www.nerdfonts.com/)
* Module: posh-git
* Module: oh-my-posh
* Module: Terminal-Icon
* Module: PSReadLine

## Installation

Add the execution of file `user_profile.ps1` to your PowerShell Profile. Either manually or by running the `install.ps1` script. 

> **Warning:** `install.ps1` will add the loading of `user_profile.ps1` everytime you are executing the installation script.
## PowerShell Core

PowerShell Core can be installed aside PowerShell 5.1. Both versions do have theire own profile folder. The installation script is linking both profiles with this repo. Changes to the Profile applying to both PowerShell versions then.
