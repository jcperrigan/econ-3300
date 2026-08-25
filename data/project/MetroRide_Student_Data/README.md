# MetroRide Industry Econometrics Challenge

MetroRide is a fictional app-based ride service competing in five midsized metropolitan markets. The company wants evidence it can use to improve pricing, marketing, service quality, and customer retention. All people, markets, rides, and outcomes in these files are synthetic.

## Files

- `customers.csv`: 12,000 customer records and pre-2025 customer history.
- `rides.csv`: 60,000 ride requests made during 2025, including completed and cancelled requests.
- `marketing_experiment.csv`: 12,000 randomized assignments in a June 2025 customer campaign and outcomes measured after assignment.
- `data_dictionary.csv`: Variable definitions, units, and coding notes.
- `metroride_starter.R`: Minimal R code for loading, joining, and checking the files.

The files join using `customer_id`. The ride file contains multiple observations for many customers. The marketing file contains one randomized campaign assignment per customer.

## Available client briefs

1. **Priority Pickup and the value of time:** Determine how much customers are willing to pay to reduce expected wait time and whether willingness to pay differs across customer or trip types.
2. **Marketing effectiveness and profitability:** Determine whether promotional offers generate additional rides, spending, net revenue, or retention—and which customers respond most.
3. **Service quality, ratings, and retention:** Examine how waiting, delays, disruptions, cancellations, driver characteristics, and vehicle quality relate to ratings, complaints, and future customer behavior.
4. **Pricing, promotions, and purchasing behavior:** Examine customer price sensitivity, discount use, cancellations, completed rides, and differences across markets or trip types.

## Important analytical notes

- Priority Pickup surcharges were randomly varied among eligible ride requests. Eligibility itself was not randomly assigned.
- Campaign treatment was randomly assigned across customers. Treatment assignment is distinct from opening or redeeming an offer.
- Ordinary fares, surge pricing, loyalty membership, actual wait times, and service experiences are not generally randomized.
- Missing values are represented by blank cells. Some blanks are structural: for example, noneligible rides do not have a Priority Pickup price. Other blanks reflect ordinary missing information.
- Zero `amount_paid` is expected for ride requests that were not completed.

The dataset is intentionally realistic enough that different modeling choices can lead to different—but potentially defensible—answers. A statistically significant coefficient is not automatically a causal effect or a useful business recommendation.

