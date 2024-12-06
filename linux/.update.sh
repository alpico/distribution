#!/bin/sh

echo "| Name   | Bytes | Description             | Announcement |"
echo "| :----- | :--- | :---------------------- | :--- |"
cat .published | while read name url; do
    for arch in $*; do
	DEST=${arch}/${name}.pico
	cp .${arch}/${name} $DEST
	$(find $(rustc --print sysroot) -name llvm-objcopy) --strip-all --strip-sections $DEST
    done
    arch=x64
    size=$(stat -c "%s" $arch/$name.pico)
    BASE=$(dirname $(cargo -C .${arch} -Z unstable-options locate-project | jshon -e root -u))
    desc=$(find $BASE -name $name.rs | xargs cat  | head -n 1 | cut -d' ' -f 2-)
    echo "| $name | $size | $desc | $url |"
done | sort -n
