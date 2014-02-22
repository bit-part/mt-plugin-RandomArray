RandomArray - Movable Type プラグイン
=================

[English](README.md)

## 概要

指定した配列から1つ、または複数の要素を取り出した配列を返します。

## 動作条件

* Movable Type 6.0 以上 (確認済み)
* おそらくMovable Type 4 と 5 でも動きます。

## インストール方法

1. ダウンロードしたアーカイブファイルを展開します。
1. Movable Type のプラグインディレクトリに展開したディレクトリをアップロードします（/path/to/mt/plugins/RandomArray）。

## 使い方

    <mt:RandomArray name="entry_ids" limit="3" setvar="random_ids">

### モディファイア

#### name (必須)

配列変数の名前の指定します。

#### limit (オプション)

ランダムに取り出す要素の数を指定します。初期値は1です。

### サンプルコード

    <mt:Entries tag="foo" limit="20">
        <mt:SetVarBlock name="entry_ids" function="push"><mt:EntryID></mt:SetVarBlock>
    </mt:Entries>
    <mt:RandomArray name="entry_ids" limit="3" setvar="random_ids">
    <mt:Entries id="$random_ids">
    <mt:EntriesHeader>
    <ul>
    </mt:EntriesHeader>
        <li><mt:EntryTitle escape="html"></li>
    <mt:EntriesFooter>
    </ul>
    </mt:EntriesFooter>
    </mt:Entries>

---

MT::Lover::bitpart