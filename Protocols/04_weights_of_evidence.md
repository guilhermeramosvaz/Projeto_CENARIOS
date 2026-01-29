# Weights of Evidence (WoE) – Calculation, Calibration and Variable Correlation

## Overview

This step aims to quantify the relationship between land use and land cover change transitions and their associated explanatory variables using the **Weights of Evidence (WoE)** approach. The procedure follows the Bayesian framework implemented in **Dinamica EGO**, allowing the estimation, calibration, and validation of transition-specific spatial probabilities.

Scripts used:

⮕ [**`Calculate Weight of Evidence `**](Model_DinamicaEGO/02_CalcWOE.egomlx)

⮕ [**`Calculate Correlation`**](Model_DinamicaEGO/03_CalcCorrelationWOE.egomlx)


---

## Inputs

### Land Use and Land Cover Maps
- Initial land use and land cover map: `2018`
- Final land use and land cover map: `2023`
- Transition rates derived from observed changes: `Transition Matrix`

### Explanatory Variables
Raster layers presented in the [**`Data Preparation Procotocol`**](Protocols/01_data_preparation.md)

All variables were previously processed to ensure:
- Same spatial resolution
- Same projection
- Spatial alignment
- Consistent NoData values

---

## Calculation of Weights of Evidence

Weights of Evidence were calculated separately for each modeled transition using the **Bayesian WoE method**. This method estimates the degree of association between the occurrence of a transition and the presence of specific ranges or categories of each explanatory variable.

For each variable, the following components were computed:
- **Positive weight (W⁺):** Indicates attraction to the transition
- **Negative weight (W⁻):** Indicates repulsion from the transition
- **Contrast (C = W⁺ − W⁻):** Overall strength of association

Continuous variables were discretized into intervals prior to WoE calculation.

---

## Calibration of Weights

The calibration process aimed to ensure that the estimated weights were statistically consistent and stable. 

Continuous variables were discretized and adjusted to avoid unstable or extreme weight values.
- Were statistically consistent;
- Did not present extreme or unstable values;
- Represented meaningful relationships with the modeled transitions.

The following calibration steps were applied:
1. Evaluation of weight distributions for each variable and transition;
2. Removal or aggregation of intervals with low sample size;
3. Adjustment of class breaks when necessary;
4. Verification of the expected direction of influence based on knowledge.

The process was iterative, with multiple calibration runs performed to refine class intervals, merge classes with low sample size, and reduce unstable or extreme weights.

Only calibrated weights were used to generate transition probability maps.

---

## Correlation Analysis Between Variables

To avoid redundancy and multicollinearity among explanatory variables, a **pairwise correlation analysis** was performed based on the calculated Weights of Evidence.

The analysis focused on:
- Correlation between WoE contrasts of different variables
- Identification of highly correlated variable pairs
- Assessment of potential double counting of explanatory power

When high correlation was detected, variable selection followed:
- Theoretical relevance to the transition
- Spatial interpretability
- Stability of weights across transitions

Highly correlated variables were either excluded or not used simultaneously in the same transition.

---

## Outputs

This step generated the following outputs:

- Calibrated Weights of Evidence tables for each transition
- Reports of excluded or adjusted variables
- Correlation matrices based on WoE values
- Final set of explanatory variables selected for each transition
- Transition probability maps derived from calibrated weights

---

## Outputs Directory Structure

```text
Weights_of_Evidence/
├── Raw_WoE/
│   └── woe_initial_calculation/
├── Calibrated_WoE/
│   └── woe_calibrated_tables/
├── Correlation/
│   ├── woe_correlation_matrix.csv
│   └── correlation_report.md
├── Probability_Maps/
│   └── transition_probability_maps/
└── README.md
