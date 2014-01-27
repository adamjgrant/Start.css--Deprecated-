# Start.css

A semantic and small CSS UI Library for modern browsers

## Semantic

Start.css can be used either with or without a preprocessor.

Either:

    <link href="start.css" rel="stylesheet" />

    <div class="s-col s-6">
      <p>I'm six columns wide</p>
    </div>
    <div class="s-col s-6">
      <p>I'm also six columns wide</p>
    </div>

Or:

    <section>
      <p>I'm six coumns wide</p>
    </section>
    <section>
      <p>I'm also six coumns wide</p>
    </section>

    ...

    section {
      @include "s-col";
      @include "s-6";
    }

## Small

Start.css requires less markup than Bootstrap or Foundation. Look at how easy it is to make a modal:

    <div class="s-modal"></div>
    
Use native HTML5 elements to write out components

    <div class="s-modal">
      <header>
        <h1>Modal Title</h1>
      </header>
      <main>
        <p>Modal Body</p>
      </main>
      <footer>
        <button class="s-btn">Save</button>
      </footer>
    </div>

...and simple jQuery for operations

    $('button').click(function() {
      $('.s-modal').fadeIn();
    })
    
[Demo](https://github.com/ajkochanowicz/Single-Element-Modal)
