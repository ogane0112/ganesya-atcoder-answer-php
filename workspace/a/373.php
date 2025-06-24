<?php
function strings() { return explode(' ', trim(fgets(STDIN))); }
function ints() { return array_map('intval', strings()); }
function doubles() { return array_map('doubleval', strings()); }
function output(...$args) { echo implode(' ', $args), "\n"; }

function main() {
    $ans = 0;
    for ($i = 1; $i <= 12; $i++) {
    list($a) = strings(); 
    if(strlen($a)== $i) {
            $ans++;
    }
}
    output($ans);

}

main();