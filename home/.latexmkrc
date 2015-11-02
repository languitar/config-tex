$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode';

use File::Slurp;

my $local_file = glob('~/.latexmkrc.local');
if (-e $local_file) {
    my $command = read_file($local_file);
    eval $command;
}
