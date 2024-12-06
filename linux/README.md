# Linux Tools

The standard tools in Linux are surprisingly large.  The simplest one
`true` from GNU coreutils is 35k large, whereas moving a file with
`mv` needs whooping 140k.  Storing and executing such large files
leads to unnecessary disk and CPU overhead.

To show that these overheads are not essence but accidential we aim to
to reduce the binary size of these tools by at least an order of
magnitude without loosing much on the performance side.

| Name   | Bytes | Description             | Announcement |
| :----- | :--- | :---------------------- | :--- |
| echo | 2568 | Output arguments to stdout. | [Speeding up echo](https://www.linkedin.com/posts/bkauer_performance-rust-lessismore-activity-7269647523437240320-r5NI) |
| false | 144 | Exit un-succesfully. | [About true and false](.) |
| true | 141 | Exit succesfully. | [About true and false](.) |
| vfork | 3993 | Execute a process many times. | [How can we start processes faster?](https://www.linkedin.com/posts/bkauer_lessismore-activity-7259185264223301632-DYqK) |
| wc-l | 1568 | Count lines from stdin. | [Line counting: the SIMD way.](.) |
| yes | 856 | Output a string forever. | [Yes: it is growing fast.](.) |


Please note that this implementation does not aim to be a drop-in
replacement.  There are just to many home-grown features that extend
beyond Posix compatiblity.
