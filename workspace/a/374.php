<?php
    
function strings() { return explode(' ', trim(fgets(STDIN))); }
function ints() { return array_map('intval', strings()); }
function doubles() { return array_map('doubleval', strings()); }
function output(...$args) { echo implode(' ', $args), "\n"; }

function main() {

    list($n) = strings();
    // preg_match('/san$/', $n);
    if(preg_match('/san$/', $n)){
        output('Yes');
    } else {
        output('No');
    }
    
}

main();