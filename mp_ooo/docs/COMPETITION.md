# Competition

This document will describe how the leaderboard is determined, and how competition grades are assigned. 

## Leaderboard

We will evaluate your processor against all the released benchmarks (`coremark_im`, `aes_sha`, `fft`, `mergesort`, and `compression`), as well as multiple hidden test cases.
You will not have access to the code of the hidden benchmarks, but information about them will be provided in [TEST_CASES.md](./TEST_CASES.md).

For each benchmark, we will evaluate your processor power ($P$), delay ($D$), and area ($A$). For each test case, your score will be given by $P \times D^3 \times \sqrt{A}$.

Each benchmark will have its own leaderboard, where the lowest $P\times D^3 \times\sqrt{A}$ score is best. You will be given a certain number of points for each test case, given by $40-(rank-1)$, where $rank$ is your team's
position on the corresponding leaderboard (i.e., first place has $rank=1$, second place has $rank=2$, etc.). 

A global leaderboard will contain a ranking based on the sum of earned points for each benchmark. The team with the highest points wins.

An example with a smaller set of tests would look like so (these leaderboards are using dummy numbers, and are not at all representative of reasonable $PD^3\sqrt{A}$ values):

### Global Leaderboard

| Rank | Team | Total Points |
|------|------|--------------|
| 1    | A    | 118          |
| 2    | B    | 117          |
| 3    | C    | 116          |


---

### fft Leaderboard

| Rank | Team | $PD^3\sqrt{A}$  | Points |
|------|------|--------|--------|
| 1    | B    | 7776   | 40     |
| 2    | C    | 10976  | 39     |
| 3    | A    | 25000  | 38     |

---

### mergesort Leaderboard

| Rank | Team | $PD^3\sqrt{A}$  | Points |
|------|------|--------|--------|
| 1    | A    | 28672  | 40     |
| 2    | B    | 29515  | 39     |
| 3    | C    | 62208  | 38     |

---

### aes_sha Leaderboard

| Rank | Team | $PD^3\sqrt{A}$  | Points |
|------|------|--------|--------|
| 1    | A    | 12500  | 40     |
| 2    | C    | 17920  | 39     |
| 3    | B    | 18522  | 38     |

---


## Grading

For each individual leaderboard, a staff-developed baseline processor with no advanced features will be evaluated. For any team beating the baseline, your grade will given by:
$20 - 8 * \frac{rank-1}{base-1}$, with $base$ being the baseline position and $rank$ being your team's position. 

For teams below the baseline, your grade will be given by: $8 * \frac{score_{base}}{score_{team}}$, with $score_{base}$ and $score_{team}$ being the $PD^3\sqrt{A}$ values for baseline and your team, respectively.

Your final competition grade will be the average of your grades for each benchmark. You do not get any points for any benchmark you fail.
