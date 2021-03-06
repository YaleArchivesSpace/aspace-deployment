# YALE TEST
AppConfig[:container_management_barcode_length] = {
  :system_default => {
    :min=>14,
    :max=>14
  },
  "YCBA-IA" => {
    :min=>9,
    :max=>9
  }
}

#new (so far required) setting to adjust how a few plugins are set up so that we won't always have to maintain separate branches
AppConfig[:environment] = 'TEST'

#something is overriding this now in our instances. if we re-add it here, will it work?
AppConfig[:allow_user_registration] = true

AppConfig[:container_management_extent_calculator] = {
  :report_volume => false,
  :unit => :feet,
  :decimal_places => 2
}

# AppConfig[:digitization_work_order_ladybird]   = true
AppConfig[:digitization_work_order_goobi]      = true
AppConfig[:max_top_container_results]          = 2500
AppConfig[:preservica_data_deleter_match_url]  = "https://preservica.library.yale.edu"
AppConfig[:preservica_data_deleter_match_user] = "preservicaprod"

AppConfig[:user_defined_in_basic] = {
  "accessions" => ["date_1", "text_1", "boolean_1", "boolean_2", "date_2", "string_2"],
  "digital_objects" => [],
  "resources" => ["string_2"],
  "hide_user_defined_section" => false
}


AppConfig[:pui_branding_img] = ''
AppConfig[:pui_block_referrer]         = true
AppConfig[:pui_enable_staff_link]      = true
AppConfig[:pui_page_actions_print]     = false
AppConfig[:pui_page_actions_request]     = false
AppConfig[:pui_search_results_page_size] = 20

# The following determine which "tabs" are on the main horizontal menu
AppConfig[:pui_hide] = {
  repositories:       false,
  resources:        false,
  digital_objects:    true,
  accessions:         true,
  subjects:         false,
  agents:           false,
  classifications:    true,
  search_tab:         false,
  accession_badge:    true,
  record_badge:       true,
  container_inventory:  false,
  classification_badge: true,
}

AppConfig[:pui_repos] = {
  "brbl" => {
    hide: {
    accession_badge: false,
    }
  },
  "mssa" => {
    hide: {
    classification_badge: false,
    }
  },
}

AppConfig[:aeon_fulfillment] = {
  "arts" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => "ART"
  },
  "brbl" => {
    :aeon_web_url => "https://aeon-test-brbl.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => false,
    :document_type_map => {:default => 'BRBL'},
    :web_request_form_map => {:default => 'GenericRequestORBIS'},
    :aeon_site_code => "BRBL"
  },
  "mssa" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {
      :default => 'Manuscript',
      'RU' => 'Archives',
    },
    :web_request_form_map => {
      :default => 'GenericRequestManuscript',
      'RU' => 'GenericRequestArchive',
    },
    :aeon_site_code => "MSS"
  },
  "music" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => "MUS"
  },
  "walpole" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => "LWL"
  },
  "divinity" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => "DIVY"
  },
  "medical" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => "MHL"
  },
  "ycba-ia" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => 'YCBA'
  },
  "ycba-rbm" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/Dev_NewWeb/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :aeon_site_code => 'YCBA'
  },
  "peabody" => {
    :hide_request_button => true
  },
  "oham" => {
    :hide_request_button => true
  }
}

AppConfig[:aeon_fulfillment_button_position] = 0
AppConfig[:aeon_fulfillment_record_types] = [
  "archival_object",
  "accession",
  "top_container"
]

AppConfig[:record_inheritance] = {
  :archival_object => {
    :composite_identifiers => {
    :include_level => true,
    :identifier_delimiter => ",",
    },
    :inherited_fields => [
    {
      :property => "title",
      :inherit_directly => true
    },
    {
      :property => "component_id",
      :inherit_directly => false
    },
    {
      :property => 'lang_materials',
      :inherit_directly => false
    },
    {
      :property => "dates",
      :inherit_directly => true
    },
    {
      :property => "linked_agents",
      :inherit_if => proc { |json| json.select {|j| j["role"] == "creator"} },
      :inherit_directly => false
    },
    {
      :property => "notes",
      :inherit_if => proc { |json| json.select {|j| j["type"] == "accessrestrict"} },
      :inherit_directly => false
    },
    {
      :property => "notes",
      :inherit_if => proc { |json| json.select {|j| j["type"] == "prefercite"} },
      :inherit_directly => false
    },
    ]
  }
}

AppConfig[:google_maps_api_key] = ENV.fetch('GOOGLE_MAPS_API_KEY', nil)
AppConfig[:libcal_service_id] = '457'

AppConfig[:omniauthCas] = {
  :provider => {
          :url                  => 'https://secure-tst.its.yale.edu',
          :login_url            => '/cas/login',
          :service_validate_url => '/cas/serviceValidate',
          :host                 => 'secure-tst.its.yale.edu',
          :ssl                  => true,
  },
  :frontendUidProc    => lambda { |hash| hash['uid'] },
  :backendUidProc     => lambda { |hash| hash['user'] },
  :backendEmailProc   => lambda { |hash| '' },
  :logoutUrlPath      => '/cas/logout',
  :createUnknownUsers => true,
}

# Determines whether or not all fields are exported with a CSV export, or if only the columns that display on screen are exported (false = all columns, which was the default prior to ASpace 2.7)
AppConfig[:limit_csv_fields] = false

AppConfig[:iiif_viewer_url] = "https://collections.library.yale.edu/uv/uv.html#?manifest="

AppConfig[:search_csv_extra_nested_records] = ['payment_summary', 'payments']

AppConfig[:search_csv_max_nested_records] = 20

AppConfig[:container_management_labels] = [
    {"institution_name" => {
        "checked" => true,
        "disabled" => false}},
    {"repository_name" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_id" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_title" => {
        "checked" => true,
        "disabled" => false}},
    {"agent_name" => {
        "checked" => true,
        "disabled" => false}},
    {"series_id" => {
        "checked" => false,
        "disabled" => false}},
    {"type" => {
        "checked" => false,
        "disabled" => false}},
    {"indicator" => {
        "checked" => true,
        "disabled" => true}},
    {"barcode" => {
        "checked" => false,
        "disabled" => false}},
    {"location" => {
        "checked" => false,
        "disabled" => false}},
    {"location_barcode" => {
        "checked" => false,
        "disabled" => false}}
]

AppConfig[:container_management_labels_pagesize] = {
    "dymo-30256" => {
        "size" => "59mm 102mm",
        "margin" => "5mm 1mm 5mm 1mm"},
    "avery-5163" => {
        "size" => "letter",
        "margin" => "0.5in 0.125in"}
}

AppConfig[:container_management_labels_autoscale] = {
  "checked" => true,
  "disabled" => false
}
