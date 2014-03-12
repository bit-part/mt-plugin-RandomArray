<?php
function smarty_function_mtrandomarray ($args, &$ctx) {

    $vars = $ctx->stash('vars');
    if (! $var_name = $args['name']) {
        return $ctx->error('You used an RandomArray tag without a valid name attribute.');
    }

    $array_org = $vars[$var_name];
    if (! is_array($array_org)) {
        return $ctx->error('You need to set an array to name attribute.');
    }
    $array_clone = $array_org;
    $rand_array = array();
    $length = count($array_clone);

    if (! $limit = $args['limit'] - 0) {
        $limit = 1;
    }
    elseif ($limit > $length) {
        $limit = $length;
    }

    for ($i = 0; $i < $limit; $i++) {
        $rand_index = array_rand($array_clone);
        $rand_array_one = array_splice($array_clone, $rand_index, 1);
        if (count($rand_array_one) > 0) {
            array_push($rand_array, $rand_array_one[0]);
        }
    }
    if ($args['destructive']) {
        $ctx->__stash['vars'][$var_name] = $array_clone;
    }

    return $rand_array;
}
?>