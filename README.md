# Start.css

A semantic and small CSS UI Library for modern browsers

## Semantic

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
