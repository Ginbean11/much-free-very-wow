![MuchFreeVeryWowLogo](http://steveafrost.com/assets/img/blogs/muchfreeverywowghlogo.jpg)
---
Much Free, Very Wow is a CRUD Sinatra app where users can signup, login, and contribute free activities to do in NYC.

* Both users and activities are saved into a SQLite3 database upon creation.
* Activity details can be viewed at the their RESTful URL. For example, if an activity named "Free Comedy Show" is created, the details can be viewed at /activities/free-comedy-show.
* Activities can also be edited or deleted but only by the user who created the activity.


## Getting Started

### Prerequisites
* You must install Bundler using the info [here](http://bundler.io/).

### Installation
* Fork & clone repo
* Run `bundle install` in Terminal

### Usage
* Type `shotgun` in Terminal to run Sintra's Shotgun server
* Visit `locahost:9393` in browser to interact with web app

## Contributing
All code within pull requests should adhere to the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)

Please ensure your pull request adheres to the following guidelines:
* Search previous suggestions before making a new one
* Suggested READMEs should be beautiful or stand out in some way.
* Make an individual pull request for each suggestion.
* New categories, or improvements to the existing categorization are welcome.
* Keep descriptions short and simple, but descriptive.
* Start the description with a capital and end with a full stop/period.
* Check your spelling and grammar.
* Make sure your text editor is set to remove trailing whitespace.

Thank you for your suggestions!

## License

MIT License | Copyright (c) 2016 [Steve Frost](http://steveafrost.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
