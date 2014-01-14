Ada cross-compile
=================
This project will include the Vagrant settings and scripts to set up an
Ubuntu 12.04.3 virtual server machine for cross-compilation against different
targets.

### First goal
 * Ada for ARMhf (BeagleBone Black, rev A5C)

### Future goal
 * Ada for AVR. (http://sourceforge.net/projects/avr-ada/).

### Comments
##### ARM
As of 14th of January 2014, cross compiling on amd64 build machine with target
of ARMhf (BeagleBone Black) hasn't been tested as you can install Ubuntu directly on
the BeagleBone Black and build Ada code natively there.

##### AVR
Ada for AVR projects works just fine but the process of installing and
configuring it is time consuming. Hopefully this Vagrant set up will be able
to make that process easier.

