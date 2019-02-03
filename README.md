# once app

A single page app for creating content and sharing it with specific people.

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

- figure out CORS configuration with `rack-cors`
