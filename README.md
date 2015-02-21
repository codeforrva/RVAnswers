# Richmond Answers

Richmond Answers is based on [Oakland Answers](http://answers.oaklandnet.com/): a new approach to make it easier for people to navigate city information and services quickly. This particular fork was a project started during CodeAcross RVA.


## Installation

**If you are using OS X Mountain Lion and above, please follow this guide**


## Local Setup

    $ git clone git@github.com:nikiliu/RVAnswers.git
    $ cd oakland_answers
    $ bundle install
    $ bundle exec rake db:create:all
    $ bundle exec rake db:migrate
    $ bundle exec rake db:seed
    $ cp .env.example .env
    $ bundle exec rake secret # set this as key value for SECRET_TOKEN in .env

You then need to obtain API keys and set them in `.env` for the application to run properly.

1. [Searchify](https://www.searchify.com/)
2. [Amazon S3](http://aws.amazon.com/s3/)


## Usage

    $ foreman start

Visit http://localhost:3000 in your web browser.


## First-time Heroku setup

    $ heroku create mycity-answers


## If instance already exists...

    $ heroku git:remote -a mycity-answers -r heroku


## Deploying to Heroku

In your project directory:

    $ git push heroku master
    $ heroku run rake db:migrate

Make sure to set appropriate environment variables (SECRET_TOKEN is required):

    $ heroku config:set SECRET_TOKEN=xxxxx

For reference, see: [https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku)


## Testing

`bundle exec rake spec` command will run the current tests


## Submitting an Issue

We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. You can indicate support for an existing issue by
voting it up. When submitting a bug report, please include a [Gist][gist] that
includes a stack trace and any details that may be necessary to reproduce the
bug, including your gem version, Ruby version, and operating system. Ideally, a
bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/


## Submitting a Pull Request

1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add tests for your feature or bug fix.
5. Commit and push your changes.
6. Submit a pull request.


## License

Copyright (c) 2015, Code for America.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of Code for America nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/honolulu_answers.png)][tracker]

[tracker]: http://stats.codeforamerica.org/projects/honolulu_answers
