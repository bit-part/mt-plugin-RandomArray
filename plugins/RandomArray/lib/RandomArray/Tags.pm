package RandomArray::Tags;
use strict;

# Function Tags : RandomArray
sub _hdlr_randomarray {
    my ($ctx, $args) = @_;

    my $vars = $ctx->stash('vars');
    my $var_name = $args->{'name'}
        or return $ctx->error(MT->translate('You used an [_1] tag without a valid name attribute.', 'RandomArray'));

    my $array_org = $vars->{$var_name};
    my @array_clone = @$array_org;
    my @rand_array;

    my $length = @array_clone;
    my $limit = $args->{'limit'} - 0 || 1;
    if ($limit > $length) {
        $limit = $length;
    }

    for (my $i = 0; $i < $limit; $i++) {
        $length = @array_clone;
        push @rand_array, splice @array_clone, int rand $length, 1;
    }

    if ($args->{'destructive'}) {
        $ctx->{__stash}{vars}{$var_name} = \@array_clone;
    }

    return \@rand_array;
}

1;