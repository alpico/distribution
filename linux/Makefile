ARCH:=a64 x64 native
update:	build
	./.update_table.sh README.md 1 ./.update.sh "${ARCH}"

build:
	for arch in ${ARCH}; do				\
		BASE=$$(dirname $$(cargo -C .$$arch -Z unstable-options locate-project | jshon -e root -u)); \
		cargo -C $$BASE -Z unstable-options b-$$arch --release; 	\
	done
