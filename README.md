# Student evaluation tool

Last individual assignment at Codaisseur Academy.This rails web application helps teachers to keep track of all the evaluations given to students. As a teacher you can add classes, add students to classes, edit information about students, give evaluations to students, select a student on his last grade and give him a question (red students have 50% of chance, yellow students have 33 % of chance and green students have 17% of chance of geting picked).

## Work in progress

I have intention to work more on frontend.


## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:aljazskrinjar/evaluationTool.git
cd evaluationTool
bundle install
rake db:create db:migrate db:seed
rails server
```
