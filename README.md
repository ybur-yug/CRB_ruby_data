# Trivial Data Steps

Prepare the data

```bash
cd lib
ruby prep.rb
ruby run.rb
```

The paths in `prep.rb` are relative, so after cloning the cd IS necessary for it to properly work.

# Real Data Steps

First, download 12 months of comment data from this torrent (magnet link)

```
magnet:?xt=urn:btih:32916ad30ce4c90ee4c47a95bd0075e44ac15dd2&dn=RC%5F2015-01.bz2&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969
```
This is nearly a decade of comments. So, you will need to go into the torrent properties and select
one year of data to use. I chose 2009 at random.

Now, you need to remove the sample `month.json` files in the `data` directory.

```bash
cd data
rm jan/* feb/* mar/* apr/* may/* jun/* jul/* aug/* sep/* oct/* nov/* dec/*
```

And copy in the unzipped files from the year of torrent data. They are labelled by month and zipped
to begin with.

They will be named something like `RC-2009-06` once unzipped (this one being june 09)

Now, each month on average has ~1mil comments. This will take quite a while. But, when done you have
a saved file in the root of this repository named `results`. The sample results is taken using 2 comments
from each month of june 2009.

Included Data: `sentiment`, `score`, `comment`, `month`

# Possible Interesting Data Points

Overall sentiment change by month over the year
Average sentiment score by month
Both of these by day (fine-grained)
A single month sentiment by day, grouped by day
etc, etc. Get creative!
