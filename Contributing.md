# Contributing

Any contribution is appreciated.

## Setup

Install [Go](https://go.dev/doc/install), [Hugo](https://gohugo.io/installation/)
and [Node](https://nodejs.org/en/download). Then

```bash
npm install
```

To run a local development server, run

```bash
make dev
```

And if you need to simultaneously develop the theme, refer to its
[installation instructions](https://github.com/sunderner-heimatbund/hugo-shb-theme#installation)
(expand "Local Development").

## Versioning

Version tags are date-based in the format `YYYY.MM.DD` (for example
`2026.08.10`), with an optional numeric appendix `YYYY.MM.DD.X`. (This can be
useful if two versions must be created for the same day).

Tags pushed automatically deploy to production.

## CD

`.github/workflows/deploy.yml` builds the static site with Hugo and deploys it
as a Cloudflare Worker.

- Push a date-versioned tag (for example `2026.08.10`) to deploy production at
  `[www.]sunderner-heimatbund.de`.
- Push plain commits to `main` (no tag) to deploy a preview at
  `preview.sunderner-heimatbund.de`.
