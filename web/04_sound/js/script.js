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

var sensor1 = 0;
var sensor2 = 0;

var audio1 = document.getElementById("tiger1audio");
var audio2 = document.getElementById("tiger2audio");

/*
 *************************************  events
 */

$('body').click(function() {
    audio1.load();
    audio2.load();
});

// here the magic part, we receive the data!

exampleSocket.onmessage = function (event) {
    var data = event.data;
    var values = data.split(",");
    // console.log(values);

    sensor1 = values[0];
    sensor2 = values[1];

    // and then apply it to it via css
    // also play the audio
    // https://www.w3schools.com/jsref/dom_obj_audio.asp
    if (sensor1 === "touched") {
        $('.rectangle1').not('.touched').addClass('touched');
        if (audio1.paused) {
            audio1.play(); // play sound
        }

    } else {
        $('.rectangle1').removeClass('touched');
        if (!audio1.paused) {
            document.getElementById("tiger1audio").pause();
            document.getElementById("tiger1audio").currentTime = 0; // rewind
        }
    }
    // if (sensor2 === "touched") {
    //     $('.rectangle2').not('.touched').addClass('touched');
    //     if (audio2.paused) {
    //         audio2.play(); // play sound
    //     }

    // } else {
    //     $('.rectangle2').removeClass('touched');
    //     if (!audio2.paused) {
    //         document.getElementById("tiger2audio").pause();
    //         document.getElementById("tiger2audio").currentTime = 0; // rewind
    //     }
    // }
}

