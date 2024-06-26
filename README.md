# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  3.1.4

* System dependencies
  Here is a list of gems I have added:
    set up with pg and tailwind
    figaro - env variables
    devise - auth
    rubocop - keep code square
    standard - because I like how it argues with rubocop over everything.
    aws-sdk-s3 - for bucket access


* Configuration
  Using Figaro for environment variables. Create an config/application.yml file for your environment variables. Remember to verify it is in your .gitignore file. Review at (Figaro 1.1.1)[https://www.rubydoc.info/gems/figaro/1.1.1]. Alternatively, after bundle install, you can "*figaro install*" to let Figaro do it.

* Database creation
  Using Postgresql. My system can be cranky with regards to pg. I have added "*host, username, and password*" to the configuration object in the config/database.yml file. You may not need this or want this. I need it because there is not default user for the default configuration of rails in my postgres set up on my system.

* Database initialization
  Review the config/database.yml. Review the config/application.yml. Run:

  ```
  bin/rails db:create
  ```

  To create the database for development and test. Then run:

  ```
  bin/rails db:migrate
  ```

  To complete the initial set up.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

There is a hermit. Hermit has many seasons. Season has many episodes.

Hermit model

- [ ] real_name: string what mom named them
- [x] start_year: integer 
- [x] alias: string character name
- [ ] alias_img: text url or text for image of alias
- [ ] alias_alt: string alt text for img
- [ ] nick_name: string what friends call them
- [x] subs: float number of subscriptions
- [ ] location: string city and country
- [ ] quote: string common saying
- [x] description: text information on the person and character
- [x] youtube: text url
- [x] twitch: text url
- [x] twitter: text url
- [x] instagram: text url
- [x] patreon: text url
- [x] skin: text url image or url, full skin
- [x] skin_alt: string alt text for skin
- [x] face: text url image of face, not avatar
- [x] face_alt: string alt text for face
- [ ] avatar: text url for avatar
- [ ] banner_img: text banner image url

Season model

- [x] se_number: integer
- [x] se_description: text
- [ ] se_hermit: reference hermit

Episode model

- [x] ep_number: integer
- [x] ep_description: text
- [x] ep_img: text - url
- [x] ep_alt: string
- [x] ep_video_key
- [ ] ep_season: reference season
- [ ] ep_hermit: reference hermit
