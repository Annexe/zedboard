SRC_URI_append = " file://dropbear.sh"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

do_install_append() {
	install -d ${D}${sysconfdir}/default/
	install -m 0755 ../dropbear.sh ${D}${sysconfdir}/default/dropbear
}
