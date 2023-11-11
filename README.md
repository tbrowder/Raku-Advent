TITLE
=====

Rocking Raku Meets Stodgy Debian

Santa's IT department was now fully invested in using Raku and it was paying off in increased programmer efficiency as well as toy output. But old elf Eli, a system administrator, was grumbling to himself that it was a lot of work keeping the many hosts (mostly Gnu/Linux, for great savings on hardware) with many different Linux flavors current given the rapid development of Raku. 

He had been trying to convince his boss to gradually convert all systems to Debian but his boss was reluctant to do so because of a conundrum: Debian has a long development cycle (good for IT stability) but Raku has a short development cycle (roughly monthly). Systems other than Debian tended to keep Raku more current and typically stayed within 12 months of the latest Raku. But that effort often resulted in more OS maintenance than Debian required. (Note the proliferation of Linux flavors had come about due to flashy young elves, freshly out of grad school, who favored the OS-of-the-month they used in school. To Eli's chagrin, Santa was a softy and too kind to interfere.)

Eli had long ago selected Debian as his choice of Linux systems for several reasons including its program packaging system as well as its roughly three-year upgrade cycle. Unfortunately, that conflicted with Raku's almost monthly upgrade cycle. Given the long cycle, Debian's Raku version tended to be quite outdated (although usable for most purposes). Eli wanted a maintainable way to keep Raku current as well as make it a primary coding language on each new system.

The steadfast but unheralded folks on the Raku release team have provided many ways to install Raku on several flavors of GNU/Linux as well as MacOS and Windows. Eli started using the 'rakudo-pkg' method when it was first introduced years ago.

But, when it was announced it would not keep up with Debian versions after the end of the Long Term Support (LTS) period, he started considering other available methods to see which was best for complete automation both for regular upgrades as well as during initial Debian installations (including Debian's preseeding installation).

After considering methods published on [https://rakudo.org](https://rakudo.org), he decided the binary downloads looked to be the easiest. An archive of code compiled for the desired system, accompanied by an identifying Sha256 hash and signed by one of the holders of the public keys published on the site, unpacked into a standard directory should be possible with Raku alone without other modules than the one he would create.

With the smell of figgy pudding coming from the mess hall, he started to think deep thoughts while doing his regular duties. Finally, eureka! Why not use the system Raku to bootstrap a current Raku--genius!

Eagerly he started to cobble, er, code... After many iterations, mistakes, and going down rabbit holes, and with help from fellow Debianites on the Debian users mailing list, he came up with his shiny new Raku module distribution: **RakudoBin**.

He solved the bootstrap problem by using a special path setup so the new module could call the package Raku as well as the updated Raku. 

One other tricky problem he solved (with the help of Nick [@ugexe]), and was quite proud of, was checking for the latest version without downloading large files.

In summary, system administrators who want their stable Debian systems while having their Raku version be the latest have an easy-to-use way to quickly convert a standard Debian installation into a standard Raku host with common paths for all new users.

Santa's Epilogue
----------------

Don't forget the "reason for the season:" ✝

As I always end these jottings, in the words of Charles Dickens' Tiny Tim, "**may God bless Us, Every one!**" [1]

Footnotes
---------

1. *A Christmas Carol*, a short story by Charles Dickens (1812-1870), a well-known and popular Victorian author whose many works include *The Pickwick Papers*, *Oliver Twist*, *David Copperfield*, *Bleak House*, *Great Expectations*, and *A Tale of Two Cities*.

