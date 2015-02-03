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

[views]: 
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, and listings for a place (~1 day)
By the end of the first day, the user will be able to log in or sign up. They will
also be able to make a listing for their place and tag it with attributes, but only through
the console. In order to move onto phase 2, The user should be able to signup/in, create
a listing, edit it, and destroy it. All done in rails.

[Details][phase-one]

### Phase 2: JSON API and First Backbone Views (~2 days)
I will add API routes to serve blog and post data as JSON, then add Backbone
models and collections that fetch data from those routes. By the end of this
phase, the existing Rails views will have been ported over to Backbone.

[Details][phase-two]

### Phase 3: Editing and Displaying Posts (~2 days)
I plan to use third-party libraries to add functionality to the `PostForm` and
`PostShow` views in this phase. First I'll need to add a Markdown editor to the
`PostForm`, and make sure that the Markdown is properly escaped and formatted in
the `PostShow` view. I also plan to integrate Filepicker for file upload so
users can add images to blog posts.

[Details][phase-three]

### Phase 5: Searching for Blogs and Posts (~2 days)
I'll need a `search` route that accepts a query in the params. The controller
action will run two queries: one to find blogs where the `title` matches
the search term, and another to find posts where one of their associated `Tag`s
matches the search term. In Backbone, I plan to implement a `SearchResults` view
that will display matching blogs in one column and matching posts in another.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] email notification if a listing matches what you're looking for
- [ ] facebook app integration for user convenience
- [ ] groups of people can look together

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md

