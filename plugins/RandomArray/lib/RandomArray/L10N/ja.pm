package RandomArray::L10N::ja;
use strict;
use base 'RandomArray::L10N::en_us';
use vars qw ( %Lexicon );

%Lexicon = (
    # config.yaml
	'bit part LLC' => 'bit part 合同会社',
    'Pick one or more random items out of an array.' => '指定した配列から1つ、または複数の要素を取り出した配列を返します。',

    # Tags.pm
    'You used an [_1] tag without a valid name attribute.' => '[_1]タグではname属性は必須です。',
    'You need to set an array to name attribute.' => 'name属性には配列の変数名を指定しなければなりません。',
);

1;