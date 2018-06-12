
This is now **obsolete** as R 3.5.0 is in Debian proper. 

Please [read this blog post](http://dirk.eddelbuettel.com/blog/2018/06/11#r_3_5_0_deb_update) for details.
Original content follows below.




## [OBSOLETE] (Temporary) Debian repository for R packages built with R 3.5.0

### Why?

Long story: R 3.5.0 requires all packages containing compiled code to be rebuilt. Debian, in its own
special ways, decides to do this properly via a managed transition.  We started this with an
[upload of R 3.5.0 (to 'experimental')](https://packages.debian.org/experimental/r-base) and (by
convention) a [bug report against release.debian.org](https://bugs.debian.org/896667) on the day R
3.5.0 was released.  But Debian has many packages, and these things take time. You can follow this
transition [via this tracker](https://release.debian.org/transitions/html/r-base-3.5.html).

In the meantime, it would still be nice to use (some of) these packages.  Hence this repo. I am
starting with `r-recommended` and `r-cran-littler` which go into the base
[Rocker](https://www.rocker-project.org/) image.

### Sources

See my [Debian git repos](https://salsa.debian.org/edd)

### Builds

Locally, in the same pbuilder instance I use for Debian uploads

### Usage 

Add a line such as 

```
deb [trusted=yes] https://eddelbuettel.github.io/drr35/ ./
```

to _e.g._, a file `/etc/apt/sources.list.d/drr35.list` and run `apt update`.
