# Sample Code to Use Google REST API

These folders provide some examples on how to use Google Cloud REST API using Ruby's built-in library `http` and `json`. The Machine Learning Task follows the Qwiklab tutorial called ["Extract, Analyze, and Translate Text from Images with the Cloud ML APIs"](https://www.cloudskillsboost.google/focuses/1836?parent=catalog). 

## How to Use This Sample

1. You need to have a Google account and create a new project.
1. You will need to enable these two API:
    - Cloud Vision API
    - Cloud Translation API 
    - Cloud Natural Language API
1. Create API Key from "API & Services" -> "Credentials"

Once, you have the API Keys, do the following in your terminal (Unix-based):
```sh
export API_KEY=<your API key>
```

or (windows-based):
```dos
set API_KEY=<your API key>
```

## Running the Example
To run the sample file, type: 
```sh
ruby <filename>
```

For example, to run one of the vision API example, 
```sh
ruby vision_ex1.rb
```


