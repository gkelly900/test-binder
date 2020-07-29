Instructions

# Task

A database called `TestDB` has a single table in it, `people`. 

- You have an hour (45 mins + 15 mins for technical difficulties) to do the tasks set out below (includes time reading through this readme). If you run out of time we will still assess the code and discuss where you got to.
- We have installed a few commonly used packages (e.g. `dplyr`) and `SQLite` for connecting to the database. If you wish to install further packages, simply run `install.packages("[package_name]")`.
- Feel free to use the internet to help you with this task.
- Each step can be done independently of the others. If you cannot complete a step you can skip it and move to the next one
- We will ask you to talk us through your code during the interview

**Do not close your browser window as your work will be lost**

## Step 1

For each person in the `people` table, get the nearest courts according to the court and tribunals finder API.

The courts and tribunals finder API returns a list of the ten nearest courts to a given postcode. The output is an array of objects in a JSON format. The API is accessed by including the postcode of interest in a URL. For example, accessing https://courttribunalfinder.service.gov.uk/search/results.json?postcode=E144PU gives the ten nearest courts to the postcode E14 4PU. Click the link to see an example of the output.


Below is the first element of the JSON array from the above API call. We only want the following keys from the json: `name`, `dx_number` and `distance`. Note `dx_number` is not always returned.

```json
[
    {
        "name": "Central London Employment Tribunal",
        "lat": 51.5158158439741,
        "lon": -0.118745425821452,
        "number": null,
        "cci_code": null,
        "magistrate_code": null,
        "slug": "central-london-employment-tribunal",
        "types": [
            "Tribunal"
        ],
        "address": {
            "address_lines": [
                "Victory House",
                "30-34 Kingsway"
            ],
            "postcode": "WC2B 6EX",
            "town": "London",
            "type": "Visiting"
        },
        "areas_of_law": [
            {
                "name": "Employment",
                "external_link": "https%3A//www.gov.uk/courts-tribunals/employment-tribunal",
                "display_url": "<bound method AreaOfLaw.display_url of <AreaOfLaw: Employment>>",
                "external_link_desc": "Information about the Employment Tribunal"
            }
        ],
        "displayed": true,
        "hide_aols": false,
        "dx_number": "141420 Bloomsbury 7",
        "distance": 1.29
    },
    ...
]
```

Using this API and the given rows from the people table, create a table that looks like this:

|person_name | court_name | dx_number | distance |
|---|---|---|---|
|tommy| court1 | 15353 test | 1.0 |
|tommy| court2 | 15354 test | 1.2 |
etc...

Where person_name is the `name` column from the `persons` table and `court_name` is the `name` property from the API response (remaining cols are from the API response).

## Step 2

Write the above table into the database as a new table named `courts`. You can do this however you like. You do not need to worry about setting up primary foreign key relationships between this table and the existing table.

**Notes:**
- If you could not complete step 2 use the `csvs/step1.csv` as your output from step 1.

## Step 3
Create a single table from the database that gives the following information:
- The person's name (`person_name`)
- Their postcode (`person_postcode`)
- The distance to the closest court (`closest_court_dist`)
- The distance to the furthest court (`furthest_court_dist`)

So that the resulting table looks like this:

|person_name | person_postcode | closest_court_dist | furthest_court_dist |
|---|---|---|---|
|jo | AAA 111| 1.0 | 1.2 |
|bob| AAA 112 | 5.0 | 7.2 |
etc...

Write this into a csv named `step3.csv` in the `csvs` folder. What you use to create this output is up to you.

**Notes:**
- You may do this however you wish - feel free to use pandas, sql, or any other library you’re familiar with
- If you could not complete step 1 and/or step 2 use the `csvs/step1.csv` in place of the `courts` table in the database.
