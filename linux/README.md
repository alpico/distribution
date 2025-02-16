# Linux Tools

The standard tools in Linux are surprisingly large.  The simplest one
`true` from GNU coreutils is 35k large, whereas moving a file with
`mv` needs whooping 140k.  Storing and executing such large files
leads to unnecessary disk and CPU overhead.

To show that these overheads are not essence but accidental we aim to
to reduce the binary size of these tools by at least an order of
magnitude without losing much on the performance side.

| Name   | Bytes | Description             | Announcement |
| :----- | :---- | :---------------------- | :--- |
| arch | 258 | Print the machine hardware. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| basename | 1018 | Get the filename for a path. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| dirname | 881 | Get the directory for a path. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| echo | 2432 | Output arguments to stdout. | [Speeding up echo](https://www.linkedin.com/posts/bkauer_performance-rust-lessismore-activity-7269647523437240320-r5NI) |
| false | 142 | Exit unsuccessfully. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| head | 3320 | Output the first parts of the given files. | [To splice or not to splice?](https://www.linkedin.com/posts/bkauer_splice-optimization-lessismore-activity-7278440673777782784-2YWv) |
| hello | 186 | Hello world! | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| hyperfine | 6120 | Benchmark a single process. | [Better own your tools.](https://www.linkedin.com/posts/bkauer_benchmark-tools-lessismore-activity-7292936912191844352-D2JP) |
| link | 824 | Hard-link files. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| nc | 3904 | TCP connections and listens. | [When latency matters.](https://www.linkedin.com/posts/bkauer_lessismore-latency-ladybug-activity-7290761665099235329-CPRy) |
| pv | 4657 | Show amount of data flowing through a pipe. | [To splice or not to splice?](https://www.linkedin.com/posts/bkauer_splice-optimization-lessismore-activity-7278440673777782784-2YWv) |
| true | 139 | Exit successfully. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| unlink | 616 | Remove files. | [To the tiny ones.](https://www.linkedin.com/posts/bkauer_tiny-programming-lessismore-activity-7296196486801862657-pa_F) |
| vfork | 4089 | Execute a process many times. | [How can we start processes faster?](https://www.linkedin.com/posts/bkauer_lessismore-activity-7259185264223301632-DYqK) |
| wc | 5248 | Word count. | [How to optimize wc?](https://www.linkedin.com/posts/bkauer_wc-optimize-lessismore-activity-7274786985649623041-xxT1) |
| yes | 1080 | Output a string forever. | [yes: our software is bloated](https://www.linkedin.com/posts/bkauer_complexity-optimization-lessismore-activity-7272653052879286273-PxwA) |


Please note that this implementation does not aim to be a drop-in
replacement.  There are just too many home-grown features that extend
beyond POSIX compatibility.
