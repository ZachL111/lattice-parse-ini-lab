# Field Notes

The useful part of this repository is the small rule set around token drift and label quality.

The domain cases cover `token drift`, `grammar width`, `label quality`, and `error locality`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `label quality` and `grammar width`, so those are the first two cases I would preserve during a refactor.

The language-specific addition keeps the review model in a module with Minitest coverage.
