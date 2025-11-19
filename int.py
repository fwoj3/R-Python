from pathlib import Path

import pandas as pd

niezalezna_jeden = 258
niezalezna_dwa = 277

zalezna_jeden = 242
zalezna_dwa = 293

suma = 535

chi_kwadrat_1 =niezalezna_jeden * zalezna_jeden / suma
print(chi_kwadrat_1)
chi_kwadrat_2 = niezalezna_dwa * zalezna_dwa / suma
print(chi_kwadrat_2)
chi_kwadrat_3 = niezalezna_jeden * zalezna_dwa / suma
print(chi_kwadrat_3)
chi_kwadrat_4 = niezalezna_dwa * zalezna_jeden / suma
print(chi_kwadrat_4)

# Resolve the CSV path relative to this script so it works from any cwd
data_path = Path(__file__).resolve().parent / "candidates.csv"

df = pd.read_csv(data_path, index_col=0)

print(df.head())

include_votes = df[df["votes_2007"] > 0]
exclude_votes = df[df["votes_2007"] == 0]

print(include_votes.head())
print(exclude_votes.head())

tab_1 = candidates.loc[candidates["votes_2007"] > 0, "votes_2007"].table()

print(tab_1)