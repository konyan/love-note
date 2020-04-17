<p align="center">
 <a href="https://github.com/konyan/love-note">
    <img src="app/assets/images/ln.svg" alt="Logo" width="680" height="80">
  </a>
  <h3 align="center">Love Notes</h3>

  <p align="center">
    Express your feeling to everyone or someone your care.
    <br />
    <br />
    <a href="https://murmuring-cliffs-77814.herokuapp.com/">Heroku Live Demo</a> |
    <a href="http://159.65.130.237">Digital Ocean Live Demo</a>
    <br />
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Unit Testing](#unittesting)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

<a href="https://github.com/konyan/love-note">
    <img src="app/assets/images/home.png" alt="Logo" width="800" height="auto">
  </a>

This is capstone project of Microverse Rails Curriculum.Project Name is **Love Notes**.
Love Notes is online note to share everyone or someone you care. User note will be hosted online as note and Other user can view and vote love.

- Create Note via Form
- Show Note in Home Page
- Can click Love Button your loved
- Login with Username
- User Profile Page
- Show other Profile Page

### Built With

For the whole project, I used following tools and language.

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://rubyonrails.org/)
- [Jquery](https://jquery.com/)
- [Rspec](https://github.com/rspec/rspec-rails)
- [Html,CSS]()

<!-- GETTING STARTED -->

## Getting Started

This is an example of how you may give instructions on setting up your project locally. To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

- ruby

```txt
https://www.ruby-lang.org/en/downloads/
```

### Installation

1. Clone the repo

```sh
git clone git@github.com:konyan/love-note.git
cd project
```

2. Check your Ruby version

```sh
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

3. Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

4. Initialize the database

```shell
rails db:create db:migrate db:seed
```

5. Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

6. Serve

```shell
rails s
```

7. Deploy

**With Heroku pipeline (recommended)**

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

<!-- UNIT TESTING -->

## Unit Testing

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

- ruby

```sh
gem install rspec
```

### Installation

1. Run spec files at Spec Folder

```ruby
rspec spec/job_spec.rb
rspec spec/joburl_spec.rb
rspec spec/position_spec.rb
```

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

WTF `LICENSE`. You can do whatever you want, I don't care. :P

<!-- CONTACT -->

## Contact

[@devkonyan](https://twitter.com/devkonyan) - devkonyan@gmail.com

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Rails Docs Guide](https://guides.rubyonrails.org/)
