Couchbase Homebrew
==================

What is this?
-------------
This is the Couchbase fork of homebrew on which we publish updates to
various things we'd like to be pulled and integrated into the upstream
homebrew repositories.

What do you Brew?
-----------------
At the moment, we provide libvbucket and libcouchbase through homebrew.
These are client libraries, intended for C/C++ developers or to be used
with the Ruby, PHP and other client libraries.  More information on
installing those can be found at the [Couchbase Website][cbdevelop].

Couchbase Server packages for Mac OS X 64-bit Intel may be found on the
[Couchbase Download][cbdownload] page.

We would welcome contributions of other brew packages.

You will notice in this repository, the master branch has been orphaned
intentionally, leaving only this readme.  There are two other branches,
the "stable" branch and the "preview" branch.  The stable branch
has formulae for the current, stable releases.  The preview branch has
previews of upcoming releases.


Have an Issue?
--------------
Please report it on the [issue tracker][cblibcouchbaseissues].

[cbdevelop]:http://www.couchbase.com/develop
[cblibcouchbaseissues]:http://www.couchbase.com/issues/browse/CCBC
[cbdownload]:http://www.couchbase.com/download
