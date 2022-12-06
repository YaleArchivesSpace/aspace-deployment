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

# Search results paging
AppConfig[:default_page_size] = 10

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

# remove after testing wraps up.
AppConfig[:aeon_fulfillment_debug] = true

# new "requests_permitted_for_digital_object_instances" parameter added for some repositories, not all, to test.
AppConfig[:aeon_fulfillment] = {
  "arts" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "ART"
  },
  "brbl" => {
    :aeon_web_url => "https://aeon-test-brbl.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'BRBL'},
    :web_request_form_map => {:default => 'GenericRequestORBIS'},
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "BRBL"
  },
  "mssa" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
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
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "MSS"
  },
  "music" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "MSS"
  },
  "walpole" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
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
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "DIVY"
  },
  "fortunoff_testimonies" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Fortunoff'},
    :web_request_form_map => {:default => 'GenericRequestFortunoff'},
    :requests_permitted_for_born_digital => false,
    :disable_digital_copy_request_for_access_restriction_types => ['InProcessSpecColl'],
    :disable_reading_room_request_for_access_restriction_types => ['UseSurrogate'],
    :aeon_site_code => "FORT"
  },
  "medical" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :requests_permitted_for_born_digital => true,
    :aeon_site_code => "MHL"
  },
  "ycba-ia" => {
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
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
    :aeon_web_url => "https://aeon-test-mssa.library.yale.edu/aeon.dll",
    :aeon_return_link_label => "Return to Archives at Yale",
    :aeon_external_system_id => "ArchivesSpace",
    :request_in_new_tab => true,
    :requests_permitted_for_containers_only => true,
    :hide_button_for_access_restriction_types => ['NoRequest'],
    :hide_button_for_accessions => true,
    :document_type_map => {:default => 'Manuscript'},
    :web_request_form_map => {:default => 'GenericRequestManuscript'},
    :requests_permitted_for_born_digital => true,
    :disable_digital_copy_request_for_access_restriction_types => ['InProcessSpecColl'],
    :disable_reading_room_request_for_access_restriction_types => ['UseSurrogate'],
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

AppConfig[:aeon_disable_photoduplication] = false

AppConfig[:aeon_client_max_results] = 5000
AppConfig[:aeon_client_username] = 's_lib_t_aeon_search'
AppConfig[:aeon_client_password] = ENV.fetch('AEON_CLIENT_PASSWORD', nil)
AppConfig[:aeon_client_repo_codes] = [
  "Arts",
  "BRBL",
  "Divinity",
  "Fortunoff_Testimonies",
  "Medical",
  "MSSA",
  "Music",
  "OHAM",
  "Walpole",
  "YCBA-IA",
  "YCBA-RBM"
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

## Yale Accession MARC Export config
AppConfig[:yale_accession_marc_export_schedule] = '45 22 * * *' # 22:45 every day; Lyrasis servers are on UTC, so this is 1745 EST and 1845 EDT
AppConfig[:yale_accession_marc_export_location_code] = 'beints'
AppConfig[:yale_accession_marc_export_target] = 's3'
AppConfig[:yale_accession_marc_export_s3_client_opts] = {
  :access_key_id => ENV.fetch('YALE_ACCESS_KEY_ID', nil),
  :secret_access_key => ENV.fetch('YALE_SECRET_ACCESS_KEY', nil),
  :region => 'us-west-2',
}
AppConfig[:yale_accession_marc_export_s3_bucket] = 'aspace-yale-test'

# Determines whether or not all fields are exported with a CSV export, or if only the columns that display on screen are exported (false = all columns, which was the default prior to ASpace 2.7)
AppConfig[:limit_csv_fields] = false

# NB: No dedicated test instance viewer for YCBA at this time (22 March 2022)
AppConfig[:iiif_viewer_url] = {
    :default => 'https://collections-uat.library.yale.edu/uv/uv.html#?manifest=',
    'YCBA-RBM' => 'https://view.collections.yale.edu/uv3/?manifest=',
    'YCBA-IA' => 'https://view.collections.yale.edu/uv3/?manifest='
}

AppConfig[:search_csv_extra_nested_records] = ['payment_summary', 'payments']

AppConfig[:search_csv_max_nested_records] = 20

AppConfig[:container_management_labels] = [
    {"institution_name" => {
        "checked" => true,
        "disabled" => false}},
    {"repository_name" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_title" => {
        "checked" => true,
        "disabled" => false}},
    {"series_id" => {
        "checked" => true,
        "disabled" => false}},
    {"series_display" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_id" => {
        "checked" => false,
        "disabled" => false}},
    {"agent_name" => {
        "checked" => false,
        "disabled" => false}},
    {"type" => {
        "checked" => true,
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

AppConfig[:container_management_labels_csv] = true
AppConfig[:container_management_labels_delim] = ', '
AppConfig[:container_management_labels_series] = 'Series '
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
