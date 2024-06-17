.PHONY: fmt clippy test

fmt:
	@for crate in $(shell find src/app src/lib -name Cargo.toml); do \
	  (cd $$(dirname $$crate) && cargo fmt); \
	done

clippy:
	@for crate in $(shell find src/app src/lib -name Cargo.toml); do \
	  (cd $$(dirname $$crate) && cargo clippy -- -D warnings); \
	done

test:
	@for crate in $(shell find src/app src/lib -name Cargo.toml); do \
	  (cd $$(dirname $$crate) && cargo test); \
	done
