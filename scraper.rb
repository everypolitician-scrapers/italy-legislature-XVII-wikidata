#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/italy-legislature-XVII-wikipedia', column: 'wikiname')
names.shuffle.each_slice(250) do |sliced|
  EveryPolitician::Wikidata.scrape_wikidata(names: { it: sliced })
end
