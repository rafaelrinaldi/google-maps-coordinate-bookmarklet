<!doctype html>
<html lang="en-us">
<head>
  <link href="./favicon.png" rel="shortcut icon">
  <style>
    * {
      font-smoothing: antialiased;
    }

    html, body {
      height: 100%;
    }

    body {
      transform: translateZ(0);
      font-family: sans-serif;
      background: #2980b9;
      background: linear-gradient(to bottom, #2980b9 0%, #3498db 100%);
      color: #fff;
      overflow: hidden;
    }

    a {
      color: #fff;
      text-decoration: none;
    }

    .button {
      transition: all .15s ease-in-out, opacity .75s linear;
      font-size: 1.3em;
      font-weight: bold;
      letter-spacing: -.02em;
      padding: 35px;
      border-radius: 5px;
      color: #fff;
      background: transparent;
      border: 3px solid #fff;
      opacity: 0;
    }

    .button:hover {
      background: #fff;
      color: #2980b9;
      box-shadow: 2px 2px 0 1px rgba(0, 0, 0, .1);
    }

    .button:hover .indicator {
      fill: red;
    }

    .show-button {
      opacity: 1;
    }

    .content {
      position: fixed;
      top: 50%;
      width: 100%;
      text-align: center;
    }

    .instructions {
      transition: opacity .75s linear;
      width: 100%;
      text-align: center;
      position: fixed;
      bottom: 15%;
      opacity: 0;
    }

    .show-instructions {
      opacity: 1;
    }

    .arrow {
      transition: all .15s ease-out;
      position: fixed;
      width: 100%;
      top: 10%;
      text-align: center;
      fill: #fff;
      transform: scale(.45);
      opacity: 0;
    }

    .show-arrow {
      top: 0;
      opacity: 1;
      transform: scale(.35);
    }
  </style>
</head>
<body>
  <div class="indicator">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="512px" version="1.1" viewBox="0 0 512 512" width="512px" xml:space="preserve" class="arrow"><path d="M413.1 327.3l-1.8-2.1l-136-156.5c-4.6-5.3-11.5-8.6-19.2-8.6c-7.7 0-14.6 3.4-19.2 8.6L101 324.9l-2.3 2.6 C97 330 96 333 96 336.2c0 8.7 7.4 15.8 16.6 15.8v0h286.8v0c9.2 0 16.6-7.1 16.6-15.8C416 332.9 414.9 329.8 413.1 327.3z"/></svg>
  </div>

  <main class="content">
    <a class="button" href="javascript:%s" title="Drag the button to your bookmarks bar">Get Coordinate</a>
  </main>

  <footer class="instructions">
    <p>Drag the button to your bookmarks bar</p>
  </footer>

  <script src="http://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

  <script>
    (function(exports) {
      var $ = function $(klass) { return document.getElementsByClassName(klass)[0]; },
          button = $('button'),
          arrow = $('arrow'),
          instructions = $('instructions');

      button.addEventListener('mouseover', toggleArrowVisibility);
      button.addEventListener('mouseout', toggleArrowVisibility);

      setTimeout(showButton, 250);
      setTimeout(showInstructions, 750);

      function toggleArrowVisibility() {
        arrow.classList.toggle('show-arrow');
      }

      function showButton() {
        button.classList.add('show-button');
      }

      function showInstructions() {
        instructions.classList.add('show-instructions');
      }
    })(window);
  </script>
</body>
</html>
