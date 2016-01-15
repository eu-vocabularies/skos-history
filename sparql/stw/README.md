STW Thesaurus for Economics
=========================

Queries on [STW Thesaurus for Economics](http://zbw.eu/stw), which contains subthesauri and a hierarchy of general subject categories (thesaurus groups in [ISO-25964](https://en.wikipedia.org/wiki/ISO_25964)). These queries are used for generating the change reports on STW production site ([8.14 reports (beta)](http://zbw.eu/stw/version/8.14/changes) are generated live, while [9.0 reports](http://zbw.eu/stw/version/9.0/changes) and [reports on accumulated changes 8.06-9.0](http://zbw.eu/stw/version/latest/relaunch) are pre-computed JSON files.)


__Lists of individual changes__

Query | Description
------|------------
[added_concepts_by_category](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/added_concepts_by_category.rq) | Added STW concepts (by default: descriptors) by second-level category
[deprecated_concepts_by_category](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/deprecated_concepts_by_category.rq) | Deprecated STW concepts (by default: descriptors) by second-level category
[added_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/added_labels.rq) | Added descriptor labels (pref/altLabels)
[deleted_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/deleted_labels.rq) | Deleted descriptor labels (pref/altLabels)
[moved_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/moved_labels.rq) | Moved pref/altLabels
[merged_partially](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/merged_partially.rq) | Partially merged deprecated concepts
[changed_preferred_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/changed_preferred_labels.rq) | Show concepts (by default:descriptors) where the preferred labels has changed, and link to RDFa pages accordingly (for thsys, this includes notation changes)
[moved_categories_subthes](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/moved_categories_subthes.rq) | Show categories which have been moved to another sub-thesaurus (skos:topConcept)
[added_narrower](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/added_narrower.rq) | Added narrower relations to already existing concepts (newly introduced narrower concepts flagged)
[added_broader](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/added_broader.rq) | Added broader relations to already existing concepts (newly introduced broader concepts flagged)


__Aggregated information about versions__

Query | Description
------|------------
[count_added_concepts_by_category](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_added_concepts_by_category.rq) | Count added STW concepts by second-level category
[count_deprecated_concepts_by_category](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_deprecated_concepts_by_category.rq) | Count deprecated STW concepts by second-level category
[count_added_concepts_by_top](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_added_concepts_by_top.rq) | Count added STW concepts by sub-thesaurus (topConcept)
[count_deprecated_concepts_by_top](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_deprecated_concepts_by_top.rq) | Count deprecated STW concepts by sub-thesaurus (topConcept)
[count_added_concepts](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_added_concepts.rq) | Count added STW concepts (of a certain concept type) per version
[count_deprecated_concepts](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_deprecated_concepts.rq) | Count deprecated STW concepts per version
[count_added_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_added_labels.rq) | Count added alt/prefLabels for STW descriptors in a certain language per version
[count_deleted_labels](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_deleted_labels.rq) | Count deleted alt/prefLabels for STW descriptors in a certain language per version
[count_concepts](http://zbw.eu/beta/sparql-lab/?queryRef=https://api.github.com/repos/jneubert/skos-history/contents/sparql/stw/count_concepts.rq) | Count STW concepts (of a certain concept type) per version


