HUGO = mise exec -- hugo

.PHONY: serve build artwork comic post

serve:
	$(HUGO) server --buildDrafts

build:
	$(HUGO)

artwork:
	$(HUGO) new artwork/$(filter-out $@,$(MAKECMDGOALS))

comic:
	$(HUGO) new comic/$(filter-out $@,$(MAKECMDGOALS))

post:
	$(HUGO) new post/$(filter-out $@,$(MAKECMDGOALS))

%:
	@:
