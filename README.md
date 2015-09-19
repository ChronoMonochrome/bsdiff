bsdiff
------

This package provides a pair of tools for building (bsdiff) and applying
(bspatch) binary patches. When applied to two versions of the same executable
the patches produced are significantly smaller than those generated by other
binary diff tools.

Bsdiff and bspatch were originally written as part of the author's FreeBSD
Update tool, where they provide an average 50-fold reduction in the bandwidth
used to distribute binary security updates to the FreeBSD base system. Since
that time it has been incorporated into a large number of products, including
Apple's OS X.

The price to pay for the efficient delta compression of executable code comes in
speed and memory usage: Bsdiff is many times slower than alternatives, and
requires memory equal to 17 times the size of the "old" input file.

The website for bsdiff is <http://www.daemonology.net/bsdiff/>.
