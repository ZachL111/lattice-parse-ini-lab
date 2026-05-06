# Review Journal

I treated `lattice-parse-ini-lab` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 187, lane `ship`
- `stress`: `grammar width`, score 160, lane `ship`
- `edge`: `label quality`, score 202, lane `ship`
- `recovery`: `error locality`, score 171, lane `ship`
- `stale`: `token drift`, score 183, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
