default:
	rm -rf /tmp/marboo
	rm -rf ~/Downloads/marboo_templates_v1.zip
	mkdir -p /tmp/marboo/{source,build}
	git archive --prefix=media/ -o /tmp/marboo/media.zip master
	@cd /tmp/marboo/source;unzip ../media.zip > /dev/null
	@cd /tmp/marboo/build;unzip ../media.zip > /dev/null
	rm -f /tmp/marboo/media.zip
	@cd /tmp;zip -r ~/Downloads/marboo_templates_v1.zip marboo > /dev/null
	ls -l -h ~/Downloads/marboo_templates_v1.zip
