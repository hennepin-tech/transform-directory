# transform-directory
This bash script pulls JSON data from HTC's Employee directory and transforms it into two [NDJSON](http://ndjson.org/) (New-line Deliminated JSON). NDJSON format is what is required to import data into [Sanity.io](https://sanity.io), so this script was written to make importing this data easier. When run, two `.ndjson` documents will be created in `/dist` - one for employees and one for departments. Importing each of these into Sanity will require the creation of content types which match the structure of the items in these two documents.

The main tool used in this script is [jq](https://stedolan.github.io/jq/) - a very nice bash CLI tool for parsing JSON data

## Getting started

Clone this repo to your machine - note that copies of the `.ndjson` files are already committed and will be overwritten when the script is run

```shell
git clone https://github.com/hennepin-tech/transform-directory.git
```

Then run it!

```shell
cd transform-directory && bash script.sh
```