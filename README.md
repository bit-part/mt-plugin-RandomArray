RandomArray - Movable Type Plugin
=================

[Japanese](README.ja.md)

## Overview

Pick one or more random items out of an array.

## Prerequisites

* Movable Type 6.0 or higher (I confirmed it.)
* Maybe Movable Type 4 or 5

## Installation

1. Unpack the RandomArray's archive.
1. Copy the "RandomArray" directory into /path/to/mt/plugins/

## Usage

    <mt:RandomArray name="entry_ids" limit="3" setvar="random_ids">

### Attributes

#### name (required)

The name of the array.

#### limit (optional)

Specifies how many items should be picked. Default is 1.

#### destructive (optional)

This attribute is destructive. The original array is altered.

### Basic Example

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