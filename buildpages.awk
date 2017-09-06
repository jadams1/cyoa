BEGIN { RS = "--- Page [[:digit:]]+\n" ; FS = "^" }
{
    print "\\vspace*{\\fill} % page",FNR-1
    print $1
    print "\\vspace*{\\fill}"
    print "\\newpage"
}
