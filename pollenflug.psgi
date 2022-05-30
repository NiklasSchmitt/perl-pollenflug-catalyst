use strict;
use warnings;

use pollenflug;

my $app = pollenflug->apply_default_middlewares(pollenflug->psgi_app);
$app;

