$(document).ready(function() {
    // mobile menu
    $(".button-collapse").sideNav();

    // syntax highlighting
    $('pre code').each(function(i, block) {
        hljs.highlightBlock(block);
    });
})
