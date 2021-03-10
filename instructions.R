## Test

### Before you begin

A few things to note:
* You have an hour (45 mins + 15 mins for technical difficulties) to do the task set out below (includes time reading through this readme);
* If you run out of time we will still assess the code and discuss where you got to;
* We have installed a few packages you may find useful (Tidyverse), but you can use any package you like. If you wish to install further packages, simply run `install.package("[package-name]");
* Feel free to use the internet to help you with this task;
* We will ask you to talk us through your code during the interview;

### Data Tests

We would like you to write some functions to validate and identify any issues with the data in the `csvs` folder. There are two files in the folder: `good_data.csv`, which should pass your validation functions; and `bad_data.csv`, which should fail. We would also like you to output some simple logs that detail the outcome of your tests, ideally idenitifying where any failures occur.

Each file contains five columns. These columns should conform to the following types and restrictions (all columns are nullable unless stated):

```
staff_id: 4 digit non-nullable integer,
name: string,
address: string,
office: one of ["London", "Leeds", "Manchester"],
fte: float between 0 and 1
```

**Task**: Write function(s) to validate these conditions against the two datasets provided (`good_data.csv` and `bad_data.csv`). Log the results of your tests to screen.
