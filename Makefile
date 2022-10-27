.PHONY: test
test:
	molecule test

.PHONY: converge
converge: yamllint
	molecule converge

.PHONY: verify
verify:
	molecule verify

.PHONY: yamllint
yamllint:
	yamllint .


.PHONY: lint
lint: yamllint
	ansible-lint

.PHONY: clean
clean: 
	molecule destroy