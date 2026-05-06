# binary-store-btree-kit

`binary-store-btree-kit` keeps a focused Swift implementation around databases. The project goal is to develop a Swift command-oriented project for btree scenarios with fixture event logs, golden state snapshots, and no network dependency.

## Why This Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how index fit and constraint risk should influence a review result.

## Binary Store Btree Kit Review Notes

For a quick review, compare `constraint risk` with `join width` before reading the middle cases.

## Capabilities

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/binary-store-btree-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `constraint risk` and `join width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `edge` is the high score at 207; `stress` is the low score at 134.

## Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
