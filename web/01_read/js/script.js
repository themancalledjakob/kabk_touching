/****************************************************************************
* Initial setup
*
* Don't forget to run the server with `php -S localhost:9999` in terminal
* open `localhost:9999/01_basic/` with browser
****************************************************************************/

/*
 *************************************  global variables
 */

var serverIP = "localhost";    // the beauty of websockets is,
                                        // that you can have the server
                                        // running on another computer
                                        // in that case, just put the ip here
                                        // if you want to use the same,
                                        // just do "localhost"

var exampleSocket = new WebSocket("ws://" + serverIP + ":8080");

var rectangleLeft = 0;
var rectangleTop = 0;

/*
 *************************************  events
 */

// here the magic part, we receive the data!

exampleSocket.onmessage = function (event) {
    var data = event.data;
    var values = data.split(",");
    console.log(values);

    rectangleLeft = values[0];
    rectangleTop = values[1];

    // and then apply it to it via css
    $('.rectangle').css('left',rectangleLeft + 'px');
    $('.rectangle').css('top',rectangleTop + 'px');
}

