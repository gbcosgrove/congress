sunlight-influence.md

## Methods

### Call Constructor Module

* search_format(foo)
* check_options_hash(options)
* call_api(options)
* string constructor
* uri_builder

### entity_search

* self.id_lookup(args)
* self.search(args)
* self.find_politicians(args)
* self.find_politicians(args)
* self.find_individual(args)
* self.find_organization(args)
* self.find_industry(args)
* self.retreive_overview(args)


### individual

* self.ind_id_lookup(args)
* self.top_individuals_by_contributions_given(options)
* self.top_recipient_organizations(options)
* self.top_recipient_politicians(options)
* self.party_breakdown(options)
* self.lobbying_registrants(options)
* self.lobbying_clients(options)
* self.lobbying_issues(options)

## Notes
 <!-- <td><%= m.get_name(politician.state) %></td> -->
 <!-- <td><%= politician.birthdate.to_date.to_formatted_s(:long_ordinal) %></td> -->


### industry

* self.industry_id_lookup(args)
* self.top_industries(options)
* self.top_organizations(options)

### itemized search

* self.campaign_contributions(options)
* self.bundled_campaign_contributions(options)
* self.contractor_misconduct(options)
* self.earmarks(options)
* self.epa_echo(options)
* self.faca_memberships(options)
* self.federal_contracts(options)
* self.federal_grants(options)
* self.lobbying_registrations(options)

### organization

* self.org_id_lookup(options)
* self.top_organizations_by_contributions_given(options)
* self.top_recipients(options)
* self.pac_recipients(options)
* self.party_breakdown(options)
* self.state_federal_breakdown(options)
* self.lobbying_registrants(options)
* self.lobbying_issues(options)
* self.bills(options)
* self.lobbyists(options)
* self.registrant_clients(options)
* self.registrant_issues(options)
* self.registrant_bills(options)
* self.registrant_lobbyists(options)
* self.mentions_in_regulations(options)
* self.regulatory_submissions(options)
* self.faca_memberships(options)
* self.fec_summary(options)



### politician

* self.fec_summary(options)
* self.pol_id_lookup(options)
* self.top_politicians_by_contributions_received(options)
* self.top_contributors(options)
* self.top_industries(options)
* self.unknown_industries(options)
* self.top_sectors(options)
* self.local_breakdowns(options)
* self.contributor_type_breakdown(options)
* self.fec_summary(options)
* self.fec_independent_exependitures(options)


