# videoconditioner
RGB video input for Altera DE1 board + PAL Modulator
----------------------------------------------------
This is an experimental video capture project. 
The goal is to capture poorly modulated RGB + Sync signal as produced by an old Soviet home PC,
detect sync, massage the signal levels, insert correct sync pulses, add PAL colour modulation
and output a signal that would be acceptable by a modern colour TV.

Вектор-06ц is the particular computer that I had in mind. Its video generation circuit is
infamous for blatant disregard of all existing video standards at once, which makes it
rather difficult to connect it to modern monitors and televisions.

Outline
-------
The main platform is Altera DE1 FPGA board. It is fairly outdated, but it's the one that I have
on my bench. Going up to more modern FPGA kits is easy.

A working PAL modulator that works well in my [vector06cc FPGA
replica](https://github.com/svofski/vector06cc) of the same computer already exists.

To sample RGB + Sync video signal one needs a decent speed ADC, preferrably with 4 channels,
or a special video capture chip. I found nothing that would suit the job easily available.
However, I found out about a neat trick of using LVDS input pairs available on FPGA chips
to implement custom sigma-delta ADC. No need for special chips!

The basic working principles of such ADC are described in the paper called
["Leveraging FPGA and CPLD digital logic to implement analog to digital converters"](http://www.embedded.com/design/configurable-systems/4008891/Leveraging-FPGA-and-CPLD-digital-logic-to-implement-analog-to-digital-converters) 
by Ted Marena. There's also an excellent explanation and demonstration of the principle in a [One Bit ADC](http://www.youtube.com/watch?v=DTCtx9eNHXE)
video by Jeri Ellsworth.

Project structure
-----------------
 * [hw](hw) contains KiCad files for the DE1 addon board. Check out the [schematic](hw/videoadc.pdf).
 * [iverilog](iverilog) contains simulation of video signals as produced by BK-0010, and their detection
 * [src](src) Altera Quartus II project and synthesizable core

Results
-------
The input board looks like this:

![ADC](https://farm4.staticflickr.com/3851/14707757370_ebe90085c4_n.jpg)

[Larger](https://www.flickr.com/photos/svofski/14707757370/)

Single channel, B&W+Sync only with BK-0010:

![BK-0010](https://farm4.staticflickr.com/3897/14770105076_e5189985cd_m.jpg)

[Larger](https://www.flickr.com/photos/svofski/14770105076/)

Single channel passthrough from C64. Signal sampled and output on DE1 VGA pins without any conditioning.

![C64](https://farm4.staticflickr.com/3893/14606473808_44bb70ef14_m.jpg)

[Larger](https://www.flickr.com/photos/svofski/14606473808/)

RGB+Sync from Vector-06c

![Vector-06c b2m test](https://farm6.staticflickr.com/5581/14721995768_ecebc7f1ab_n.jpg)

[Larger](https://www.flickr.com/photos/svofski/14721995768/)

[Work log on a forum (in Russian)](http://zx-pk.ru/showthread.php?t=23833)

Conclusion
----------
This is a research project and I never made it into a finished box with just power plug
and connectors. It works, but is not perfect. The results on my monitor are acceptable.
There were some problems with PAL encoding that I could not resolve that I observed on a couple of older TV sets. 
They are not related to the main focus of the project however: sampling video signals using nothing but a few LVDS pins.

It is definitely possible to capture low-spec video signals with a 10 year old FPGA using
only a few additional discrete components. The practical aspects of this
depend on the situation. Where reliability matter and source signal is known to be
within the specifications, a dedicated chip
like TVP7002 would most likely do better. One interesting example of a project that uses TVP7002
is [Grabor](http://www.rpg.fi/desaster/blog/2013/04/19/vga-framegrabbing-with-tvp7002/).
But with a such chip I would not be able to extract nonstandard 
video signal from Вектор-06ц, just like monitor cannot do that. Where flexibility and fine control is
required, being able to implement video decoding on the lowest possible level can be beneficial.


