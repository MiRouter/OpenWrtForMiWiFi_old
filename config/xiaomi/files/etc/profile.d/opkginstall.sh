#!/bin/sh
opkg() {
    if [[ `echo $@ | grep -o -E '^install'` ]]; then
	command opkg $@
	[[ ! "`pgrep UnblockNeteaseMusic`" && "`uci get unblockmusic.@unblockmusic[0].enabled`" == 1 ]] && {
	/etc/init.d/unblockmusic restart
	}
	rm -Rf /tmp/luci-modulecache /tmp/luci-indexcache*
    else
        command opkg $@
    fi
    rm -f /var/lock/opkg.lock
}