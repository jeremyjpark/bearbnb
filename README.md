# BearBnb

[Heroku link][heroku]

[heroku]: http://bearbnb.herokuapp.com

## Minimum Viable Product
BearBnb is a clone of AirBnb for students to find roommates or rooms. Users can:

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] Create listings for a place
- [ ] Create listings looking for a place
- [ ] Tag listings with attributes (single/double/location/numBathrooms/etc)
- [ ] View listings
- [ ] Follow listings
- [ ] Search for listings by attributes
- [ ] Message the lister

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/wireframes
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, and listings for a place (~1 day)
By the end of the first day, the user will be able to log in or sign up. They will
also be able to make a listing for their place and tag it with attributes, but only through
the console. In order to move onto phase 2, The user should be able to signup/in, create
a listing, edit it, and destroy it. All done in rails. What does this look like? Probably 
terrible, but at least it's all in Rails. I don't see a need to convert to partials, but it
all really depends on whether or not I like how it looks.


[Details][phase-one]

### Phase 2: JSON API and Backbone Views (~2 days)
Conversion of Rails Views to Backbone Views. Add models, collections, router file.
At the end of this phase, the site should look more or less the same on Heroku, but 
should be running on Backbone. No file uploads or maps included yet. Home page, user page,
listings should be up.

[Details][phase-two]

### Phase 3: Google Maps integration and search view (~1 days)
Integrate the google maps view into the search view. Still no search functionality, though it should look good on the screen (sans a working search)

[Details][phase-three]

### Phase 4: Filtering for listings (~2 days)
A filtering route will take care of processing the attributes that I'm looking for in a search
query. Also implement following feature to follow and unfollow places (essentailly a save function so they end up on the user's home page.)

[Details][phase-four]

### Phase 5: CSS/Bootstrap (~1 days)
Fill out CSS and Bootstrap

[Details][phase-five]


### Bonus Features (TBD)
- [ ] email notification if a listing matches what you're looking for
- [ ] facebook app integration for user convenience
- [ ] groups of people can look together
- [ ] authentication via devise and omniauth

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md

