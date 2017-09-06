BEGIN { RS = "--- Page [[:digit:]]+\n" ; FS = "^" }
{
    if($0 ~ /includepdf\[/){
        print "\n% page", FNR-1
        print $1
    } else {
        print "\\vspace*{\\fill} % page",FNR-1
        print $1
        print "\\vspace*{\\fill}"
        print "\\newpage"
    }
}
