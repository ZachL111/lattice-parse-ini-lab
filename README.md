# lattice-parse-ini-lab

`lattice-parse-ini-lab` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for ini stream reduction, using windowed input fixtures and late-data behavior checks.

## Why It Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Lattice Parse Ini Lab Review Notes

For a quick review, compare `label quality` with `grammar width` before reading the middle cases.

## Features

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/lattice-parse-ini-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `label quality` and `grammar width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Ruby addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
