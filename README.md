# once app

A single page app for creating content and sharing it with specific people.

# why make this app?

## Networks have a troll problem
## Sometimes I want to share with specific people

My social networks are pretty random collections of people. I've been accumulating FB "friends" and Twitter followers for about a decade. I have FB friends who are: 

- colleages from previous jobs
- people living in my neighborhood, and previous neighborhoods
- people I played a few games of ultimate frisbee with
- people I did ballroom dancing with
- former roommates
- people I went to high school with
- actual close friends who I regularly keep in touch with

The Venn diagram of all of these people is pretty intricate, and there probably isn't one single topic I could share about that would be in the intersection of all of them.

The model of FB seems to be that I post things, and most people probably don't care, but a few might. That's fine if I'm posting innocuous content that I'm fine with anyone in my network seeing.

But what about content that's more sensitive? Maybe it's a more personal thing that I wouldn't shout from the rooftops, but I would indeed share at the dinner table.

I've been recently dealing with really intense burnout, and I've been writing about it in private Evernote notes. These are definitely not things I'd post on FB or Twitter. It's just too personal. But I've talked with a number of people who are dealing with similar issues, and I *would* like to share some of my writing with some of them.

But I don't feel super comfortable creating an open link to one of these Evernote notes. I want to be sure that *only* the person I'm sharing it with has access to it, and I don't want to worry about the link getting around.

And I'd like to be able to get feedback from the specific person I'm sharing the note with. I'd like to know if and when they read it. I want them to be able to easily comment on things that hit home for them, or that they disagree with. I want honest dialog.

# dev setup

## vue frontend setup:

```
npm install -g @vue/cli
```

```
vue create once-vue
```
- Manually select features:
    - Babel
    - Router
    - Vuex
    - CSS Pre-processors
    - Linter / Formatter
- Use history mode for router? Y
- Pick a CSS pre-processor: Sass/SCSS
- Pick a linter / formatter config: ESLint + Prettier
- Pick additional lint features: Lint on save
- Where do you prefer placing config for Babel, PostCSS, ESLint, etc.? In dedicated config files

```
npm install axios date-fns
```

```
npm install --save-dev style-resources-loader
```

create `vue.config.js` file in the top-level directory

```
npm run serve
```

## rails backend setup

```
rails new once-api-rails --skip-action-cable --skip-action-mailer --skip-active-storage
```

```
bin/rails server
```

# TODO

- figure out CORS configuration with `rack-cors` (DONE)
- do a basic AJAX request to get content from the API server