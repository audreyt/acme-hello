#!/usr/bin/perl -w

use strict;
use Module::Build;

Module::Build->new(
    dist_name           => 'Acme-Hello',
    dist_version        => '0.04',
    license             => 'CC0',
    create_makefile_pl  => 'small',
    sign                => 1,

    configure_requires => {
        'Module::Build' => 0.36,
    },

    recommends          => {
        'Locale::Maketext'          => '0.20',
        'Locale::Maketext::Lexicon' => '0.15',
    },

    requires            => {
        'perl' => '5.005',
    },
)->create_build_script;

__END__
# Local variables:
# c-indentation-style: bsd
# c-basic-offset: 4
# indent-tabs-mode: nil
# End:
# vim: expandtab shiftwidth=4:
