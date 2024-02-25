// Loader Section
$(window).load(function () {
    $("#loader").fadeOut(1000, function () {
        $("body").removeClass("body");
    });
});
function preLoader() {
    let loading = document.getElementById("loader");
    loading.style.display = "none";
}

// Hamburger

function toggleNavbar() {
    this.state = !this.state;
    if (this.state) {
        openNavbar();
    } else {
        closeNavbar();
    }
}

function closeNavbar() {
    document.getElementById("navbar").style.right = "-30rem"
}

function openNavbar() {
    document.getElementById("navbar").style.right = "0"
}

// Slidebar

function toggleSlider() {
    this.state = !this.state;
    if (this.state) {
        openSlider();
    } else {
        closeSlider();
    }
}

function closeSlider() {
    document.getElementById("slider_banner_expanded").style.display = "none"
}

function openSlider() {
    document.getElementById("slider_banner_expanded").style.display = "block"
}




// Login Form


function loginToggle() {
    var header = document.querySelector('.header');
    header.classList.toggle('active');
    var popup = document.querySelector('.login-form');
    popup.classList.toggle('active');
}


// Product Image Selection

var Mainimg = document.getElementById("Mainimg");
var smallimg = document.getElementsByClassName("small_img");

smallimg[0].onclick = function () {
    Mainimg.src = smallimg[0].src;
}
smallimg[1].onclick = function () {
    Mainimg.src = smallimg[1].src;
}
smallimg[2].onclick = function () {
    Mainimg.src = smallimg[2].src;
}
smallimg[3].onclick = function () {
    Mainimg.src = smallimg[3].src;
}