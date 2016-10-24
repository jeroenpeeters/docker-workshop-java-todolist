Web ART base project
====================

This project is meant to serve as a starting point for MS Excel based, keyword driven tests with Protractor.
It is possible to use it without MS Excel as well, but Excel provides a very powerful computational platform, that makes everything a lot easier.
Of course if you don't want to shell out for MS Excel you can use any of the numerous copies like LibreOffice (OpenOffice) Calc, etc.

## Prerequisites

Make sure you have [Node.js](https://nodejs.org), npm (it comes with node) and [CoffeeScript](http://coffeescript.org/) installed on your machine. To run selenium server locally (not really necessary for dev/testing) you'll need java as well.

Install [protractor](http://www.protractortest.org/) (may need to run as root/administrator):

	npm install -g protractor

Update the local chrome and firefox selenium drivers using webdriver-manager (comes with protractor):

	webdriver-manager update

Optionally, start local selenium server (if you do that you do not need the --directConnect=true option when you start protractor)

	webdriver-manager start

## Installation

Clone this project.

Install all dependencies. In the project directory do:

	npm install

## Run

From within the project directory:

	protractor conf.coffee

### With Docker

  docker run --rm -it -v $(pwd):/work testx/protractor

## API

Check the [testx documentation](https://github.com/testxio/testx) for details.
