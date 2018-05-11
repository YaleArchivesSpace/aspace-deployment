# YALE LOCAL
AppConfig[:plugins] << "yale_pui_ask_a_question"
AppConfig[:plugins] << "aeon_fulfillment"
AppConfig[:plugins] << "aeon_mappings"
AppConfig[:plugins] << "aspace_yale_pui"
AppConfig[:plugins] << "yale_pui_hashtag"
AppConfig[:plugins] << "yale_pui_help"
AppConfig[:plugins] << "yale_pdf"
AppConfig[:plugins] << "yale_css"


AppConfig[:pui_page_actions_request] = false
AppConfig[:pui_page_actions_print] = false
AppConfig[:aeon_fulfillment] = {
    "arts" => {
  :aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
  :aeon_return_link_label => "Return to Archives at Yale",
  :aeon_external_system_id => "ArchivesSpace",
  :requests_permitted_for_containers_only => true,
  :hide_button_for_accessions => true,
  :site => "ART"
  },
  "brbl" => {
:aeon_web_url => "https://aeon-1-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => false,
:site => "BRBL"
},
  "mssa" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:site => "MSS"
},
  "music" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:site => "MUS"
},
  "walpole" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:site => "WAL"
},
  "divinity" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:site => "DIV"
},
  "medical" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:site => "MHL"
  },
  "ycba-rbm" => {
:aeon_web_url => "https://aeon-2-dev.its.yale.edu/aeon.dll",
:aeon_return_link_label => "Return to Archives at Yale",
:aeon_external_system_id => "ArchivesSpace",
:requests_permitted_for_containers_only => true,
:hide_button_for_accessions => true,
:hide_button_for_access_restriction_types => ['RestrictedSpecColl', 'NoRequestie'],
:site => 'YCBA'
  },
  "peabody" => {
:hide_request_button => true
  }
}


AppConfig[:aeon_fulfillment_record_types] = ['archival_object', 'accession', 'top_container']




AppConfig[:pui_branding_img] = ''
# By default, Solr backups will run at midnight.  See https://crontab.guru/ for
# information about the schedule syntax.
AppConfig[:solr_backup_schedule] = "1 23 31 12 2"
AppConfig[:solr_backup_number_to_keep] = 1

AppConfig[:solr_params] = {}
 # AppConfig[:solr_params] = {"q.op" => "AND" }

# The periodic indexer can run using multiple threads to take advantage of
# multiple CPU cores.
#
# By setting the next two options, you can control how many CPU cores are used,
# and the amount of memory that will be consumed by the indexing process (more
# cores and/or more records per thread means more memory used).
AppConfig[:indexer_records_per_thread] = 15
AppConfig[:indexer_thread_count] = 99
AppConfig[:indexer_solr_timeout_seconds] = 300

# PUI Indexer Settings
AppConfig[:pui_indexer_enabled] = true
AppConfig[:pui_indexing_frequency_seconds] = 10
AppConfig[:pui_indexer_records_per_thread] = 20
AppConfig[:pui_indexer_thread_count] = 99

# Define the fields for a record type that are inherited from ancestors
# if they don't have a value in the record itself.
# This is used in common/record_inheritance.rb and was developed to support
# the new public UI application.
# Note - any changes to record_inheritance config will require a reindex of pui
# records to take affect. To do this remove files from indexer_pui_state
AppConfig[:record_inheritance] = {
  :archival_object => {
    :inherited_fields => [
                          {
                            :property => 'title',
                            :inherit_directly => true
                          },
                          {
                            :property => 'component_id',
                            :inherit_directly => false
                          },
                          {
                            :property => 'language',
                            :inherit_directly => true
                          },
                          {
                            :property => 'dates',
                            :inherit_directly => true
                          },
                          {
                            :property => 'extents',
                            :inherit_directly => false
                          },
                          {
                            :property => 'linked_agents',
                            :inherit_if => proc {|json| json.select {|j| j['role'] == 'creator'} },
                            :inherit_directly => false
                          },
                          {
                            :property => 'notes',
                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'accessrestrict'} },
                            :inherit_directly => true
                          }
                         ]
  }
}

# To enable composite identifiers - added to the merged record in a property _composite_identifier
# The values for :include_level and :identifier_delimiter shown here are the defaults
# If :include_level is set to true then level values (eg Series) will be included in _composite_identifier
# The :identifier_delimiter is used when joining the four part identifier for resources
AppConfig[:record_inheritance][:archival_object][:composite_identifiers] = {
  :include_level => true,
  :identifier_delimiter => ' '
}

# To configure additional elements to be inherited use this pattern in your config
#AppConfig[:record_inheritance][:archival_object][:inherited_fields] <<
#  {
#    :property => 'linked_agents',
#    :inherit_if => proc {|json| json.select {|j| j['role'] == 'subject'} },
#    :inherit_directly => true
#  }
# ... or use this pattern to add many new elements at once
#AppConfig[:record_inheritance][:archival_object][:inherited_fields].concat(
#  [
#    {
#      :property => 'subjects',
#      :inherit_if => proc {|json|
#        json.select {|j|
#          ! j['_resolved']['terms'].select { |t| t['term_type'] == 'topical'}.empty?
#        }
#      },
#      :inherit_directly => true
#    },
#    {
#      :property => 'external_documents',
#      :inherit_directly => false
#    },
#    {
#      :property => 'rights_statements',
#      :inherit_directly => false
#    },
#    {
#      :property => 'instances',
#      :inherit_directly => false
#    },
#  ])

# If you want to modify any of the default rules, the safest approach is to uncomment
# the entire default record_inheritance config and make your changes.
# For example, to stop scopecontent notes from being inherited into file or item records
# uncomment the entire record_inheritance default config above, and add a skip_if
# clause to the scopecontent rule, like this:
#  {
#    :property => 'notes',
#    :skip_if => proc {|json| ['file', 'item'].include?(json['level']) },
#    :inherit_if => proc {|json| json.select {|j| j['type'] == 'scopecontent'} },
#    :inherit_directly => false
#  },

# PUI Configurations
# TODO: Clean up configuration options

AppConfig[:pui_search_results_page_size] = 20
AppConfig[:pui_block_referrer] = true # patron privacy; blocks full 'referer' when going outside the domain
AppConfig[:pui_enable_staff_link] = true # attempt to add a link back to the staff interface




# The following determine which 'tabs' are on the main horizontal menu
AppConfig[:pui_hide] = {}
AppConfig[:pui_hide][:repositories] = false
AppConfig[:pui_hide][:resources] = false
AppConfig[:pui_hide][:digital_objects] = true
AppConfig[:pui_hide][:accessions] = true
AppConfig[:pui_hide][:subjects] = false
AppConfig[:pui_hide][:agents] = false
AppConfig[:pui_hide][:classifications] = true
AppConfig[:pui_hide][:search_tab] = false

# The following determine globally whether the various "badges" appear on the Repository page
# can be overriden at repository level below (e.g.:  AppConfig[:repos][{repo_code}][:pui_hide][:counts] = true
AppConfig[:pui_hide][:record_badge] = true

AppConfig[:pui_hide][:accession_badge] = true
AppConfig[:pui_hide][:classification_badge] = true

AppConfig[:pui_repos]['brbl'] = {}
AppConfig[:pui_repos]['mssa'] = {}

AppConfig[:pui_repos]['brbl'][:hide] = {:accession_badge => false}
AppConfig[:pui_repos]['mssa'][:hide] = {:classification_badge => false}
# The following determines globally whether the 'container inventory' navigation tab/pill is hidden on resource/collection page
AppConfig[:pui_hide][:container_inventory] = false
