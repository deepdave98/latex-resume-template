# Engineering Resume Bullet Examples

When I review engineering resumes, I look for three things: what changed, what you owned, and proof it worked.

Use these as prompts, not claims. Replace every square-bracketed placeholder inside an example bullet with a fact you can defend, then delete anything that is not yours.

- Name your contribution, not the team's.
- Give a baseline, unit, and scope when they matter.
- Label benchmarks and load tests; do not present them as production results.
- No useful number? Name what shipped, passed, reconciled, or was adopted.
- Mention a tool only when it explains the solution.

Early-career bullets should show that you can build, debug, test, and ship a scoped piece. Experienced bullets should show decisions, tradeoffs, operations, and wider scope.

To paste an example into a `.tex` file, add `\item` and [escape LaTeX's special characters](../README.md#edit-the-content).

## Backend Engineering

### Early-Career Backend

- Built `[API operation]` for `[user workflow]` with `[framework and database]`, validated `[input or authorization rule]`, and tested `[success and failure cases]`.
- Profiled `[endpoint or query]` against `[dataset]` and added `[index, batching, or cache]`, reducing benchmark p95 latency from `[A] ms` to `[B] ms` at `[load]`.
- Implemented `[background task]` with bounded retries and `[idempotency control]`, then replayed `[failed event or request]` without losing or applying work twice.
- Traced `[failure]` to `[underlying defect]`, fixed it, and added `[regression test or alert]`, reducing `[repeat failures or diagnosis time]` from `[A]` to `[B]`.

### Experienced Backend

- Migrated `[service, API, or schema]` with `[rollout method]`, moving `[N clients or records]` with `[downtime result]`; `[reconciliation check]` confirmed `[result]`.
- Redesigned failure handling for `[workflow]` with `[idempotency key or replay-safe write]` and bounded retries, reducing `[duplicate operations or failed jobs]` from `[A]` to `[B]`.
- Removed `[database, lock, network, or serialization]` bottleneck, improving production p99 latency from `[A] ms` to `[B] ms` at `[peak load]` and reducing monthly cost from `[$A]` to `[$B]`.
- Built `[shared API or platform capability]` adopted by `[N]` teams, cutting `[integration or delivery time]` from `[A]` to `[B]`.

## Frontend Engineering

### Early-Career Frontend

- Built the loading, empty, error, and retry states for `[workflow]`, handled `[stale response or duplicate submission]` with `[control]`, and tested `[failure case]`.
- Implemented `[workflow]` with semantic HTML; verified keyboard operation, focus order, accessible names, and error announcements with `[screen reader and browser]`.
- Profiled `[page]` under `[device and network conditions]` and changed `[image delivery, critical CSS, code splitting, or render path]`, reducing lab LCP from `[A] s` to `[B] s`.
- Built `[responsive workflow]` across `[breakpoints and browsers]`, extracted `[N]` components used by `[N]` screens, and added visual regression tests.

### Experienced Frontend

- Used real-user monitoring to find `[long task, render cascade, or synchronous handler]`, removed it with `[change]`, and improved p75 INP from `[A] ms` to `[B] ms` for `[traffic segment]` over `[time window]`.
- Migrated `[N]` screens in `[N]` applications to `[shared component system]`, added visual and accessibility regression tests, and reduced `[duplicate work or release time]` from `[A]` to `[B]`.
- Fixed `[stale response, duplicate request, or cache invalidation defect]` in `[workflow]` with `[change]`, reducing `[client errors or stale-data defects]` from `[A]` to `[B]`.
- Instrumented `[user journey]` and shipped `[change]`; a controlled experiment moved `[completion, conversion, or error rate]` from `[A]` to `[B]` across `[sample and time window]`.

## Data Engineering

### Early-Career Data

- Built a scheduled `[Python or SQL]` pipeline from `[source]` to `[consumer]`, documented `[data assumptions]`, and tested missing, duplicate, and malformed records before each refresh.
- Modeled `[domain]` into `[table design]`, added uniqueness, referential-integrity, and freshness checks, and blocked `[N]` invalid or stale refreshes before `[consumer]` updated.
- Backfilled `[dataset and date range]` with checkpoints, reconciled row counts and aggregates against `[source of truth]`, and wrote `[N]` records without duplicates.
- Changed `[partitioning, filter placement, join strategy, or materialization]` after reading `[query plan]`, reducing runtime from `[A]` to `[B]` on `[data volume]`.

### Experienced Data

- Migrated `[warehouse or lake workload]` with dual runs and checkpointed backfills, moving `[N]` tables and `[N] TB` while meeting `[SLA]`; `[row-count or aggregate check]` confirmed `[result]`.
- Defined `[freshness or correctness]` SLOs and added owner-routed alerts for `[N]` pipelines, reducing mean detection time from `[A] minutes` to `[B] minutes`.
- Redesigned `[partitioning, clustering, compaction, or materialization]` for `[workload]`, cutting p95 query time from `[A] s` to `[B] s` and monthly compute spend from `[$A]` to `[$B]`.
- Chose `[batch, micro-batch, or streaming]` for `[use case]` after measuring `[freshness need]`; met `[SLO]` without `[cost or operating burden of the main alternative]`.

## Weak vs. Defensible

| Weak | Defensible |
| --- | --- |
| Improved scalability by 40%. | Split `[workflow]` at `[service boundary]`, migrated `[traffic share]` with `[rollout method]`, and reduced production p99 latency from `[A] ms` to `[B] ms` at `[peak load]`. |
| Built responsive React components. | Built `[workflow]` across `[breakpoints and browsers]`, verified `[keyboard or screen-reader behavior]`, and added visual regression tests for `[N]` components. |
| Developed ETL pipelines with Python and Spark. | Built a daily pipeline from `[source]` to `[consumer]` with replay-safe writes and `[quality checks]`, processing `[N]` records within `[freshness window]`. |

Before keeping a bullet, be ready to explain the baseline, measurement, your contribution, the main alternative, and the failure mode.

## Further Reading

- [MIT: Crafting an Effective Resume](https://capd.mit.edu/resources/career-toolkit-crafting-an-effective-resume/)
- [Google SRE: Monitoring Distributed Systems](https://sre.google/sre-book/monitoring-distributed-systems/)
- [web.dev: Core Web Vitals Thresholds](https://web.dev/articles/defining-core-web-vitals-thresholds)
- [W3C: Evaluating Web Accessibility](https://www.w3.org/WAI/test-evaluate/)
- [Google Cloud: Plan Dataflow Pipelines](https://docs.cloud.google.com/dataflow/docs/guides/plan-pipelines)
