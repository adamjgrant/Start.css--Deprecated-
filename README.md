Start.css
=========

Toying with this idea right now. I don't have anything for you folks to download just yet. *Watch* the repo for updates.

## Browser Support

Which browsers does start.css support? Latest.

IE11+, Chrome, Firefox 16+, and Safari (sort of) are all auto updating
browsers. Because of this shift in the browser support ecosystem, we state the
current latest browsers on the day of a Start.css stable release are the
browsers that version supports.

For older browser support, download an earlier version of Start.css.

## API

### Components

#### Typography

Typography relies on standard HTML5 elements.
Use hx (where x = 1-5) for headings and p, etc for basic text formatting.

### Base

#### Encapsulation

#### Grid

Start.css uses a 20 column grid. Why? 20 is divisible by 1, 2, 4, and 5.
This is not the case for most grid systems.
One- and two-third classes are also available.

**Syntax**

Use two classes:
* .col to create a column
* .s-x where x is the number of columns or "ot" for one-third, "tt" for
  two-thirds.

.s-x without .col can be reused to just apply a percentage width in factors of
1/20ths to any element.

**Recommended**

No extra class is need to wrap columns into a row, but you should use some html
element, like div, section or example. This will allow CSS3's pseudo selectors
to trigger.

    <article>
      <div class="s-col s-5">5 columns</div>
      <div class="s-col s-15">15 columns</div>
    </article>

##### .s-wrapper

Creates a simple padded container whose width maxes out at 1200px.

## File Structure

### Distributables

#### css/start.css

Main Start styles to include in head

#### js/start.js

Main Start javascript to include in body footer

### Source Files

#### stylus/

Source stylus files

##### stylus/base

Base styles like typography and grid structure

##### stylus/components

UI Components like modals and buttons

##### stylus/library

Library functions and variables

#### coffeescript/

Source coffeescript
