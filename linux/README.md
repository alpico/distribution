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
| echo | 2432 | Output arguments to stdout. | [Speeding up echo](https://www.linkedin.com/posts/bkauer_performance-rust-lessismore-activity-7269647523437240320-r5NI) |
| false | 142 | Exit un-succesfully. | [About true and false](.) |
| head | 3320 | Output the first parts of the given files. | [To splice or not to splice?](https://www.linkedin.com/posts/bkauer_splice-optimization-lessismore-activity-7278440673777782784-2YWv) |
| hyperfine | 6112 | Benchmark a single process. | [Better own your tools.](https://www.linkedin.com/posts/bkauer_benchmark-tools-lessismore-activity-7292936912191844352-D2JP) |
| nc | 3904 | TCP connections and listens. | [When latency matters.](https://www.linkedin.com/posts/bkauer_lessismore-latency-ladybug-activity-7290761665099235329-CPRy) |
| pv | 4657 | Show amount of data flowing through a pipe. | [To splice or not to splice?](https://www.linkedin.com/posts/bkauer_splice-optimization-lessismore-activity-7278440673777782784-2YWv) |
| true | 139 | Exit succesfully. | [About true and false](.) |
| vfork | 4089 | Execute a process many times. | [How can we start processes faster?](https://www.linkedin.com/posts/bkauer_lessismore-activity-7259185264223301632-DYqK) |
| wc | 5248 | Word count. | [How to optimize wc?](https://www.linkedin.com/posts/bkauer_wc-optimize-lessismore-activity-7274786985649623041-xxT1) |
| yes | 1080 | Output a string forever. | [yes: our software is bloated](https://www.linkedin.com/posts/bkauer_complexity-optimization-lessismore-activity-7272653052879286273-PxwA) |


Please note that this implementation does not aim to be a drop-in
replacement.  There are just to many home-grown features that extend
beyond Posix compatiblity.
