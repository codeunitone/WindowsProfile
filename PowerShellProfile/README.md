# PowerShell Profile


## Prerequisites

The profile is not very smart yet and is not checking if any modules which is importing even installed on the machine.
You have to install the depending modules manualy before installing the profile.

### Mandatory Modules

* posh-git
* oh-my-posh
* Chocolatey

## Installation

Run `install.ps1` to install the `WindowsPowerShell` profile into your user profile.

It will backup your PowerShell profile folder first (`$HOME\Documents\WindowsPowerShell-backup`) and then creating a link to this folder of the repository.

From now on, yout PowerShell profile is under source control.

> It is working for the PowerShell 5.1 Profile folder as well as with the PowerShell Core profile folder.

## PowerShell Core

PowerShell Core can be installed aside PowerShell 5.1. Both versions do have theire own profile folder. The installation script is linking both profiles with this repo. Changes to the Profile applying to both PowerShell versions then.
