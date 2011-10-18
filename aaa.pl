use warnings;
print "hello world";
$a=28*4;
my $str1='Acesta este sirul 1';
my $str2='sirul 2';
print $str1.'---concatenat cu----'.$str2."\n";
print "28 * 4=".$a."\n";

print "\nEGALE" if ($str1 eq $str2);
print "\nDIFERITE" if ($str1 ne $str2);
print "\nstr1 mai mare" if ($str1 gt $str2);
print "\nstr2 mai mare" if ($str1 lt $str2);

print "\n ha"x4;
print "\n";
$s="Universitatea Politehnica Timisoara";
$s1=substr $s,4,5;
$s2=substr $s,4,-11;
print "\n".$s1."\n".$s2."\n";
@list=split("",$s);
print uc $s."\n";
print lc $s."\n";

open(FILE,"studenti.txt") or die $!;
open(RAP, ">raport.txt") or die$!;
open (STAT, ">>statistica.txt") or die $!;
open (my $fh,"<:encoding(UTF-8)","gpon.txt")||die "nu pot sa deschid UTF-8:$!";
while($linie=<FILE>)
{
$c++;
print RAP $c,"$linie";
}
print STAT "Astazi s-au citit: $c linii.\n";
close(FILE);
close(RAP);
close(STAT);
