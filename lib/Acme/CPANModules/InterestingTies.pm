package Acme::CPANModules::InterestingTies;

# DATE
# VERSION

our $LIST = {
    summary => "Interesting uses of the tie() interface",
    description => <<'_',

The perl's tie interface allows you to create "magical" scalar, array, hash, or
filehandle. When you read or set the value of these variables, various things
can be triggered.

This <pm:Acme::CPANModules> list catalogs some of the interesting uses of the
tie() interface.

_
    entries => [

        {
            module => 'Acme::Tie::Formatted',
            description => <<'_',

This module allows you to do sprintf() by accessing a hash key, e.g.:

    print $format{17, "%03x"};

will output:

    011

The nice thing about this is that the $format{...} term can be put inside double
quote, although you have to use a different quote inside the quote, e.g.:

    print "The value is: $format{17, '%03x'}";
    print qq(The value is: $format{17, "%03x"});

The module advertises the functionality as "printf inside print", although the
author chose to accept a different argument order than printf. Instead of:

    FORMAT, LIST

the FORMAT is put at the end:

    LIST, FORMAT

_
        },

        {
            module => 'Regexp::Common',
            description => <<'_',

This module contains a collection of regular expression patterns. To access the
patterns, you can use the tied hash %RE, e.g.:

    $RE{quoted}
    $RE{num}{real}

You can also give arguments to customize the generated pattern:

    $RE{delimited}{-delim=>'/'}]

The advantage, again, is being able to be used inside a regular expression
pattern.

Note that the module also offers subroutine-based interface. I also created an
alternative module called <pm:Regexp::Pattern> which opts for the non-magical
subroutine-based interface and offers smaller startup overhead.

_
        },

    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
