Start.css
=========

Toying with this idea right now. Wouldn't recommend for production just yet.

## Browser Support

Which browsers does start.css support? Latest.

IE11+, Chrome, Firefox 16+, and Safari (sort of) are all auto updating
browsers. Because of this shift in the browser support ecosystem, we state the
current latest browsers on the day of a Start.css stable release are the
browsers that version supports.

For older browser support, download an earlier version of Start.css.

## API

### Components

#### Box

Boxes can be used for navigation, general UI headings, tool panes, or any general purpose "box" you want to put things in. Boxes for horizontal navigation should be filled with unordered lists (``ul``)

    <nav class="s-box">
      <ul>
        <li>
          <a href="#">Item</a>
        </li>
        <li>
          <a class="btn" href="#">Item</a>
        </li>
      </ul>
    </nav>

Use ``.s-right`` on the child ul to align right. ``li.s-box-heading`` will give you a formatted title.

    <nav class="s-box">
      <ul class="s-right">
        <li class="s-box-heading">
           <a href="#">Website</a>
        </li>
        <li>
          <a href="#">Item</a>
        </li>
        <li>
          <a class="btn" href="#">Item</a>
        </li>
      </ul>
    </nav>

#### Typography

Typography relies on standard HTML5 elements.
Use hx (where x = 1-5) for headings and p, etc for basic text formatting.

### Base

#### Encapsulation

#### Colors

Specially-applied colors are defined as .s-x where x is red, orange, yellow, green, blue, violet.

    <button class="s-btn s-green">Submit</button>

By itself, this class will do nothing, but other elements will recognize these and apply their own respective theming.

For example, .s-green on a button will make a green background with white text, but .s-green on a p or span will make the color green, but not the background.

#### Grid

Start.css uses a 12 column grid.
With the additional one-, two-, three-, and four-fifths classes, this allows for column arrangements that are divisible by 1, 2, 3, and 4.

**Syntax**

Use two classes:
* .col to create a column
* .s-x where x is the number of columns or "xf" for measurements in fifths. (e.g. .s-1f for 1/5 size or .s-2 for 1/6 size.)

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

Use ``.s-break`` for clearing floats if needed.

    <article>
      <div class="s-col s-10">10 columns</div>
      <div class="s-col s-10">10 columns</div>
    </article>
    <article>
      <div class="s-col s-5">5 columns</div>
      <div class="s-col s-15">15 columns</div>
    </article>
    <div class="s-break"></div>

**Responsive Classes**

By default, grids will target all screens. To target small, medium, large and extra large, use ``.s-x-y`` where x is ``sm``, ``md``, ``lg``, or ``xl`` and y is the number of columns, 1-12.

##### .s-wrapper

Creates a simple padded container whose width maxes out at 1200px.

### Other tools

#### .s-endconcat

Used with start.js, this will make sure one word is never alone on the last line. Based on [BuddySystem](http://codepen.io/ajkochanowicz/pen/ezEmp)

Optionally use this class or call ``$(element).s_endconcat()`` where ``element`` is the element(s) to apply to.

This must be done to the child-most element containing text. So

    <div class="s-endconcat">
       <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
       tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>

Will not work, but... 

    <div>
       <p class="s-endconcat">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
       tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>

...will.

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
