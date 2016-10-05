#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/italy-legislature-XVII-wikipedia', column: 'wikiname')
by_cat = WikiData::Category.new( 'Categoria:Deputati della XVII legislatura della Repubblica Italiana', 'it').member_titles

abort "No members in category" if by_cat.empty?

EveryPolitician::Wikidata.scrape_wikidata(names: { it: names | by_cat }, batch_size: 100)
