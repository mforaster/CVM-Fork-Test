
# APPLY THE FUNCTION CreateConceptSetDatasets TO CREATE ONE DATASET PER CONCEPT SET CONTAINING ONLY RECORDS WITH A CODE OF INTEREST

# input: EVENTS, MEDICINES, SURVEY_OBSERVATIONS, MEDICAL_OBSERVATIONS
# output: concept set datasets, one per concept set, named after the concept set itself


print('RETRIEVE FROM CDM RECORDS CORRESPONDING TO CONCEPT SETS')

CreateConceptSetDatasets(concept_set_names = conceptsets_exact_matching,
                         dataset = ConcePTION_CDM_tables,
                         codvar = ConcePTION_CDM_codvar,
                         datevar = ConcePTION_CDM_datevar,
                         EAVtables = ConcePTION_CDM_EAV_tables,
                         EAVattributes = ConcePTION_CDM_EAV_attributes_this_datasource,
                         dateformat= "YYYYmmdd",
                         vocabulary = ConcePTION_CDM_coding_system_cols,
                         rename_col = list(person_id = person_id, date = date,
                                           meaning_renamed = meaning_renamed),
                         concept_set_domains = concept_set_domains,
                         concept_set_codes =	concept_set_codes_our_study,
                         concept_set_codes_excl = concept_set_codes_our_study_excl,
                         discard_from_environment = T,
                         dirinput = dirinput,
                         diroutput = dirconceptsets,
                         extension = c("csv"),
                         vocabularies_with_dot_wildcard = c("READ"),
                         vocabularies_with_exact_search_not_dot = c("Free_text", "ICD10CM", "ICD10GM", "ICD10", "ICD9CM",
                                                                    "ICD9", "ICPC", "ICPC2P", "SNOMED", "MEDCODEID"))

CreateConceptSetDatasets(concept_set_names = conceptsets_children_matching,
                         dataset = ConcePTION_CDM_tables,
                         codvar = ConcePTION_CDM_codvar,
                         datevar = ConcePTION_CDM_datevar,
                         EAVtables = ConcePTION_CDM_EAV_tables,
                         EAVattributes = ConcePTION_CDM_EAV_attributes_this_datasource,
                         dateformat= "YYYYmmdd",
                         vocabulary = ConcePTION_CDM_coding_system_cols,
                         rename_col = list(person_id = person_id, date = date,
                                           meaning_renamed = meaning_renamed),
                         concept_set_domains = concept_set_domains,
                         concept_set_codes =	concept_set_codes_our_study,
                         concept_set_codes_excl = concept_set_codes_our_study_excl,
                         discard_from_environment = T,
                         dirinput = dirinput,
                         diroutput = dirconceptsets,
                         extension = c("csv"),
                         vocabularies_with_dot_wildcard = c("READ"),
                         vocabularies_with_exact_search = c("Free_text"))
