# My Mind Wanders

Sometimes you need to take a break and let your mind wander. This is a simple app that will help you do just that, by providing you with inspirational quotes from great thinkers just like you !

## Description

A bash script that will print the quote of the day to your terminal. The quotes are sourced from the [Dummy JSON](https://dummyjson.com/quotes).

## Installation

There is no need to install anything. Just clone the repo, change permissions to make the script executable and run it.

However, you will need the source from the [Dummy JSON](https://dummyjson.com/quotes) to be available locally. You can do this by curling the API and saving the response to a file.

```bash
curl -o ./quotes.json https://dummyjson.com/quotes
``` 

## Usage

To run the script simply type:

```bash
./my-mind-wanders.sh <quotes_json_file>
```

## Logging 

The script will log events to a file called `app.log` in the same directory as the script.