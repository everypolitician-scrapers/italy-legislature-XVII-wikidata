#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/italy-legislature-XVII-wikipedia', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { it: names }, batch_size: 250)
