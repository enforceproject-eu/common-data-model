CREATE TABLE IF NOT EXISTS public.cdm_sensitive_content_flag
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_sensitive_content_flag_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_sensitive_content_flag_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
INSERT INTO public.cdm_sensitive_content_flag VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_sensitive_content_flag VALUES (2, 'other', 'other');
INSERT INTO public.cdm_sensitive_content_flag VALUES (3, 'face', 'face');
INSERT INTO public.cdm_sensitive_content_flag VALUES (4, 'licence_plate', 'licence_plate');
INSERT INTO public.cdm_sensitive_content_flag VALUES (5, 'private_property', 'private_property');
INSERT INTO public.cdm_sensitive_content_flag VALUES (6, 'contact_detail', 'contact_detail');
INSERT INTO public.cdm_sensitive_content_flag VALUES (7, 'free_text_identifier', 'free_text_identifier');
INSERT INTO public.cdm_sensitive_content_flag VALUES (8, 'precise_location', 'precise_location');
    
CREATE TABLE IF NOT EXISTS public.cdm_observation_type
(
    id int NOT NULL,
    code character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_observation_type_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_observation_type_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
INSERT INTO public.cdm_observation_type VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_observation_type VALUES (2, 'fires', 'fires');
INSERT INTO public.cdm_observation_type VALUES (3, 'odours', 'odours');
INSERT INTO public.cdm_observation_type VALUES (4, 'illegalFire', 'illegalFire');
INSERT INTO public.cdm_observation_type VALUES (5, 'treeFelling', 'treeFelling');
INSERT INTO public.cdm_observation_type VALUES (6, 'damagedTrees', 'damagedTrees');
INSERT INTO public.cdm_observation_type VALUES (7, 'dyingTrees', 'dyingTrees');
INSERT INTO public.cdm_observation_type VALUES (8, 'fire', 'fire');
INSERT INTO public.cdm_observation_type VALUES (9, 'deadInjuredAnimals', 'deadInjuredAnimals');
INSERT INTO public.cdm_observation_type VALUES (10, 'waste', 'waste');
INSERT INTO public.cdm_observation_type VALUES (11, 'damageForestRoad', 'damageForestRoad');
    
CREATE TABLE IF NOT EXISTS public.cdm_observed_property
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_observed_property_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_observed_property_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
    
INSERT INTO public.cdm_observed_property VALUES (1, 'N/A', 'N/A');

CREATE TABLE IF NOT EXISTS public.cdm_unit
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_unit_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_unit_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_unit VALUES (1, 'N/A', 'N/A');
    
CREATE TABLE IF NOT EXISTS public.cdm_case_study
(
    id int NOT NULL,
    name character varying(255),
    decscription character varying(255),
    CONSTRAINT cdm_case_study_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_case_study_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;
    
INSERT INTO public.cdm_case_study VALUES (1, 'CS1', 'Valle Galeria');
INSERT INTO public.cdm_case_study VALUES (2, 'CS2', 'Brasov');
INSERT INTO public.cdm_case_study VALUES (3, 'CS3', 'Crete');
INSERT INTO public.cdm_case_study VALUES (4, 'CS4', 'Barcelona');
INSERT INTO public.cdm_case_study VALUES (5, 'CS5', 'East Devon');
INSERT INTO public.cdm_case_study VALUES (6, 'CS6', 'Puglia');
INSERT INTO public.cdm_case_study VALUES (7, 'CS7', 'Amsterdam');
INSERT INTO public.cdm_case_study VALUES (8, 'CS8', 'Flanders');

    
CREATE TABLE IF NOT EXISTS public.cdm_category
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_category_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_category_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_category VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_category VALUES (2, 'carParts', 'carParts');
INSERT INTO public.cdm_category VALUES (3, 'tyres', 'tyres');
INSERT INTO public.cdm_category VALUES (4, 'bulkyWaste', 'bulkyWaste');
INSERT INTO public.cdm_category VALUES (5, 'textilesClothing', 'textilesClothing');
INSERT INTO public.cdm_category VALUES (6, 'plasticWaste', 'plasticWaste');
INSERT INTO public.cdm_category VALUES (7, 'inertWaste', 'inertWaste');
INSERT INTO public.cdm_category VALUES (8, 'agriculturalWaste', 'agriculturalWaste');
INSERT INTO public.cdm_category VALUES (9, 'asbestosWaste', 'asbestosWaste');
INSERT INTO public.cdm_category VALUES (10, 'glassWaste', 'glassWaste');
INSERT INTO public.cdm_category VALUES (11, 'cardboardWaste', 'cardboardWaste');
INSERT INTO public.cdm_category VALUES (12, 'constructionMaterials', 'constructionMaterials');
INSERT INTO public.cdm_category VALUES (13, 'membranesSheeting', 'membranesSheeting');
INSERT INTO public.cdm_category VALUES (14, 'insulationPanels', 'insulationPanels');
INSERT INTO public.cdm_category VALUES (15, 'municipalSolidWaste', 'municipalSolidWaste');
INSERT INTO public.cdm_category VALUES (16, 'contaminatingLiquids', 'contaminatingLiquids');
INSERT INTO public.cdm_category VALUES (17, 'milledAsphalt', 'milledAsphalt');
INSERT INTO public.cdm_category VALUES (18, 'hospitalMedicines', 'hospitalMedicines');
INSERT INTO public.cdm_category VALUES (19, 'hospitalWaste', 'hospitalWaste');
INSERT INTO public.cdm_category VALUES (20, 'militaryWaste', 'militaryWaste');
INSERT INTO public.cdm_category VALUES (21, 'householdApplianceWaste', 'householdApplianceWaste');
INSERT INTO public.cdm_category VALUES (22, 'electronicWaste', 'electronicWaste');
INSERT INTO public.cdm_category VALUES (23, 'hazardousWaste', 'hazardousWaste');
INSERT INTO public.cdm_category VALUES (24, 'agriculturalChemicals', 'agriculturalChemicals');
INSERT INTO public.cdm_category VALUES (25, 'gas', 'gas');
INSERT INTO public.cdm_category VALUES (26, 'burntTrash', 'burntTrash');
INSERT INTO public.cdm_category VALUES (27, 'chemical', 'chemical');
INSERT INTO public.cdm_category VALUES (28, 'rottenEggs', 'rottenEggs');
INSERT INTO public.cdm_category VALUES (29, 'organicWaste', 'organicWaste');
INSERT INTO public.cdm_category VALUES (30, 'asphalt', 'asphalt');
INSERT INTO public.cdm_category VALUES (31, 'vegetation', 'vegetation');
INSERT INTO public.cdm_category VALUES (32, 'other', 'other');

    
CREATE TABLE IF NOT EXISTS public.cdm_location_source
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_location_source_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_location_source_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;
    
INSERT INTO public.cdm_location_source VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_location_source VALUES (2, 'GPS', 'GPS');
    
CREATE TABLE IF NOT EXISTS public.cdm_contributor_role
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_contributor_role_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_contributor_role_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
INSERT INTO public.cdm_contributor_role VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_contributor_role VALUES (2, 'citizen', 'citizen');
INSERT INTO public.cdm_contributor_role VALUES (3, 'expert', 'expert');
INSERT INTO public.cdm_contributor_role VALUES (4, 'authority', 'authority');
INSERT INTO public.cdm_contributor_role VALUES (5, 'researcher', 'researcher');
INSERT INTO public.cdm_contributor_role VALUES (6, 'sensor', 'sensor');
INSERT INTO public.cdm_contributor_role VALUES (7, 'imported_source', 'imported_source');
    
CREATE TABLE IF NOT EXISTS public.cdm_collection_method
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_collection_method_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_collection_method_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    

    
INSERT INTO public.cdm_collection_method VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_collection_method VALUES (2, 'mobile_app', 'mobile_app');
INSERT INTO public.cdm_collection_method VALUES (3, 'web_form', 'web_form');
INSERT INTO public.cdm_collection_method VALUES (4, 'paper_form', 'paper_form');
INSERT INTO public.cdm_collection_method VALUES (5, 'sensor', 'sensor');
INSERT INTO public.cdm_collection_method VALUES (6, 'import', 'import');
INSERT INTO public.cdm_collection_method VALUES (7, 'API', 'API');
    
CREATE TABLE IF NOT EXISTS public.cdm_evidence_type
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_evidence_type_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_evidence_type_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_evidence_type VALUES (1, 'other', 'other');
INSERT INTO public.cdm_evidence_type VALUES (2, 'photo', 'photo');
INSERT INTO public.cdm_evidence_type VALUES (3, 'video', 'video');
INSERT INTO public.cdm_evidence_type VALUES (4, 'audio', 'audio');
INSERT INTO public.cdm_evidence_type VALUES (5, 'document', 'document');
INSERT INTO public.cdm_evidence_type VALUES (6, 'sensor_file', 'sensor_file');
    
CREATE TABLE IF NOT EXISTS public.cdm_validation_status
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_validation_status_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_validation_status_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
   
INSERT INTO public.cdm_validation_status VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_validation_status VALUES (2, 'unreviewed', 'unreviewed');
INSERT INTO public.cdm_validation_status VALUES (3, 'under_review', 'under_review');
INSERT INTO public.cdm_validation_status VALUES (4, 'accepted', 'accepted');
INSERT INTO public.cdm_validation_status VALUES (5, 'rejected', 'rejected');
INSERT INTO public.cdm_validation_status VALUES (6, 'uncertain', 'uncertain');
INSERT INTO public.cdm_validation_status VALUES (7, 'superseded', 'superseded');

CREATE TABLE IF NOT EXISTS public.cdm_validation_method
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_validation_method_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_validation_method_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_validation_method VALUES (1, 'none', 'none');
INSERT INTO public.cdm_validation_method VALUES (2, 'expert_review', 'expert_review');
INSERT INTO public.cdm_validation_method VALUES (3, 'automated_qc', 'automated_qc');
INSERT INTO public.cdm_validation_method VALUES (4, 'cross_validation', 'cross_validation');
INSERT INTO public.cdm_validation_method VALUES (5, 'peer_review', 'peer_review');
INSERT INTO public.cdm_validation_method VALUES (6, 'authority_review', 'authority_review');
    
CREATE TABLE IF NOT EXISTS public.cdm_access_level
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_access_level_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_access_level_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
INSERT INTO public.cdm_access_level VALUES (1, 'restricted', 'restricted');
INSERT INTO public.cdm_access_level VALUES (2, 'public', 'public');
INSERT INTO public.cdm_access_level VALUES (3, 'registered', 'registered');
INSERT INTO public.cdm_access_level VALUES (4, 'project', 'project');
INSERT INTO public.cdm_access_level VALUES (5, 'authority_only', 'authority_only');
    
CREATE TABLE IF NOT EXISTS public.cdm_retention_class
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_retention_class_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_retention_class_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_retention_class VALUES (1, 'N/A', 'N/A');
    
CREATE TABLE IF NOT EXISTS public.cdm_compliance_relevance
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_compliance_relevance_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_compliance_relevance_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_compliance_relevance VALUES (1, 'not_assessed', 'not_assessed');
INSERT INTO public.cdm_compliance_relevance VALUES (2, 'potentially_relevant', 'potentially_relevant');
INSERT INTO public.cdm_compliance_relevance VALUES (3, 'relevant', 'relevant');
INSERT INTO public.cdm_compliance_relevance VALUES (4, 'not_relevant', 'not_relevant');
    
CREATE TABLE IF NOT EXISTS public.cdm_suspected_violation_type
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_suspected_violation_type_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_suspected_violation_type_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;        

INSERT INTO public.cdm_suspected_violation_type VALUES (1, 'N/A', 'N/A');
    
CREATE TABLE IF NOT EXISTS public.cdm_regulatory_domain
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_regulatory_domain_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_regulatory_domain_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
   
INSERT INTO public.cdm_regulatory_domain VALUES (1, 'other', 'other');
INSERT INTO public.cdm_regulatory_domain VALUES (2, 'water', 'water');
INSERT INTO public.cdm_regulatory_domain VALUES (3, 'waste', 'waste');
INSERT INTO public.cdm_regulatory_domain VALUES (4, 'air', 'air');
INSERT INTO public.cdm_regulatory_domain VALUES (5, 'biodiversity', 'biodiversity');
INSERT INTO public.cdm_regulatory_domain VALUES (6, 'forestry', 'forestry');
    
CREATE TABLE IF NOT EXISTS public.cdm_evidence_status
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_evidence_status_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_evidence_status_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
 
INSERT INTO public.cdm_evidence_status VALUES (1, 'N/a', 'N/A');
INSERT INTO public.cdm_evidence_status VALUES (2, 'not_evidence', 'not_evidence');
INSERT INTO public.cdm_evidence_status VALUES (3, 'candidate', 'candidate');
INSERT INTO public.cdm_evidence_status VALUES (4, 'submitted', 'submitted');
INSERT INTO public.cdm_evidence_status VALUES (5, 'accepted', 'accepted');
INSERT INTO public.cdm_evidence_status VALUES (6, 'rejected', 'rejected'); 
INSERT INTO public.cdm_evidence_status VALUES (7, 'archived', 'archived'); 
   
CREATE TABLE IF NOT EXISTS public.cdm_evidence_access_restriction
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_evidence_access_restriction_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_evidence_access_restriction_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
 
INSERT INTO public.cdm_evidence_access_restriction VALUES (1, 'none', 'none');
INSERT INTO public.cdm_evidence_access_restriction VALUES (2, 'project_only', 'project_only');
INSERT INTO public.cdm_evidence_access_restriction VALUES (3, 'legal_team', 'legal_team');
INSERT INTO public.cdm_evidence_access_restriction VALUES (4, 'authority_only', 'authority_only');
INSERT INTO public.cdm_evidence_access_restriction VALUES (5, 'sealed', 'sealed');
    
CREATE TABLE IF NOT EXISTS public.cdm_device_or_sensor
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_device_or_sensor_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_device_or_sensor_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_device_or_sensor VALUES (1, 'N/A', 'N/A');
    
CREATE TABLE IF NOT EXISTS public.cdm_licence
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_licence_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_licence_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

INSERT INTO public.cdm_licence VALUES (1, 'N/A', 'N/A');
INSERT INTO public.cdm_licence VALUES (2, 'CC BY 4.0', 'CC BY 4.0');
INSERT INTO public.cdm_licence VALUES (3, 'CC0', 'CC0');
INSERT INTO public.cdm_licence VALUES (4, 'restricted', 'restricted');
INSERT INTO public.cdm_licence VALUES (5, 'custom', 'custom');
INSERT INTO public.cdm_licence VALUES (6, 'none', 'none');
    
CREATE TABLE IF NOT EXISTS public.common_data_model
(
    id int NOT NULL,
    authority_notified boolean,
    authority_reference character varying(255),
    campaign_id character varying(255),
    case_study_id int default 1,
    chain_of_custody_reference character varying(255),
    contributor_id character varying(255),
    created_at timestamp with time zone,
    description character varying(255),
    end_time timestamp with time zone,
    evidence_id text,
    geometry character varying(4096),
    location_accuracy_m double precision,
    modified_at timestamp with time zone,
    observation_id character varying(255),
    observation_time timestamp with time zone,
    original_evidence_hash text,
    original_record_id character varying(255),
    personal_data_flag boolean,
    processing_activity_ref character varying(255),
    protocol_id character varying(255),
    protocol_version character varying(255),
    provenance_record character varying(4096),
    quality_score double precision,
    record_version character varying(255),
    submission_time timestamp with time zone,
    validator_id character varying(255),
    "value" character varying(255),
    sensitive_content_flag_id int default 1,
    observation_type_id int default 1,
    observed_property_id int default 1,
    unit_id int default 1,
    category_id int default 1,
    location_source_id int default 1,
    contributor_role_id int default 1,
    collection_method_id int default 1,
    evidence_type_id int default 1,
    validation_status_id int default 1,
    validation_method_id int default 1,
    access_level_id int default 1,
    retention_class_id int default 1,
    compliance_relevance_id int default 1,
    suspected_violation_type_id int default 1,
    regulatory_domain_id int default 1,
    evidence_status_id int default 1,
    evidence_access_restriction_id int default 1,
    device_or_sensor_id int default 1,
    licence_id int default 1,
    CONSTRAINT common_data_model_pkey PRIMARY KEY (id),
    CONSTRAINT cdm_sensitive_content_flag_fkey FOREIGN KEY (sensitive_content_flag_id)
        REFERENCES public.cdm_sensitive_content_flag (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_observation_type_fkey FOREIGN KEY (observation_type_id)
        REFERENCES public.cdm_observation_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_observed_property_fkey FOREIGN KEY (observed_property_id)
        REFERENCES public.cdm_observed_property (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_unit_fkey FOREIGN KEY (unit_id)
        REFERENCES public.cdm_unit (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_category_fkey FOREIGN KEY (category_id)
        REFERENCES public.cdm_category (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_location_source_fkey FOREIGN KEY (location_source_id)
        REFERENCES public.cdm_location_source (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_contributor_role_fkey FOREIGN KEY (contributor_role_id)
        REFERENCES public.cdm_contributor_role (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_collection_method_fkey FOREIGN KEY (collection_method_id)
        REFERENCES public.cdm_collection_method (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_evidence_type_fkey FOREIGN KEY (evidence_type_id)
        REFERENCES public.cdm_evidence_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_validation_status_fkey FOREIGN KEY (validation_status_id)
        REFERENCES public.cdm_validation_status (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_validation_method_fkey FOREIGN KEY (validation_method_id)
        REFERENCES public.cdm_validation_method (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_access_level_fkey FOREIGN KEY (access_level_id)
        REFERENCES public.cdm_access_level (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_retention_class_fkey FOREIGN KEY (retention_class_id)
        REFERENCES public.cdm_retention_class (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_compliance_relevance_fkey FOREIGN KEY (compliance_relevance_id)
        REFERENCES public.cdm_compliance_relevance (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_suspected_violation_type_fkey FOREIGN KEY (suspected_violation_type_id)
        REFERENCES public.cdm_suspected_violation_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_regulatory_domain_fkey FOREIGN KEY (regulatory_domain_id)
        REFERENCES public.cdm_regulatory_domain (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_evidence_status_fkey FOREIGN KEY (evidence_status_id)
        REFERENCES public.cdm_evidence_status (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_evidence_access_restriction_fkey FOREIGN KEY (evidence_access_restriction_id)
        REFERENCES public.cdm_evidence_access_restriction (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_device_or_sensor_fkey FOREIGN KEY (device_or_sensor_id)
        REFERENCES public.cdm_device_or_sensor (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_licence_fkey FOREIGN KEY (licence_id)
        REFERENCES public.cdm_licence (id) MATCH SIMPLE
        ON UPDATE NO ACTION,
    CONSTRAINT cdm_case_study_fkey FOREIGN KEY (case_study_id)
        REFERENCES public.cdm_case_study (id) MATCH SIMPLE
        ON UPDATE NO ACTION
);

CREATE SEQUENCE IF NOT EXISTS public.common_data_model_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    CACHE 1;    

CREATE VIEW public.cdm_full_properties
 AS
 SELECT 
    id,
     (SELECT d.name_eng FROM public.cdm_sensitive_content_flag as d 
	  join public.common_data_model as o on d.id = o.sensitive_content_flag_id where o.id = common_data_model.id) AS sensitive_content_flag,
    (SELECT d.name_eng FROM public.cdm_observation_type as d 
	  join public.common_data_model as o on d.id = o.observation_type_id where o.id = common_data_model.id) AS observation_type,
    (SELECT d.name_eng FROM public.cdm_observed_property as d 
	  join public.common_data_model as o on d.id = o.observed_property_id where o.id = common_data_model.id) AS observed_property,
    (SELECT d.name_eng FROM public.cdm_unit as d 
	  join public.common_data_model as o on d.id = o.unit_id where o.id = common_data_model.id) AS unit,
    (SELECT d.name_eng FROM public.cdm_category as d 
	  join public.common_data_model as o on d.id = o.category_id where o.id = common_data_model.id) AS category,
    (SELECT d.name_eng FROM public.cdm_location_source as d 
	  join public.common_data_model as o on d.id = o.location_source_id where o.id = common_data_model.id) AS location_source,
    (SELECT d.name_eng FROM public.cdm_contributor_role as d 
	  join public.common_data_model as o on d.id = o.contributor_role_id where o.id = common_data_model.id) AS contributor_role,
    (SELECT d.name_eng FROM public.cdm_collection_method as d 
	  join public.common_data_model as o on d.id = o.collection_method_id where o.id = common_data_model.id) AS collection_method,
    (SELECT d.name_eng FROM public.cdm_evidence_type as d 
	  join public.common_data_model as o on d.id = o.evidence_type_id where o.id = common_data_model.id) AS evidence_type,
    (SELECT d.name_eng FROM public.cdm_validation_status as d 
	  join public.common_data_model as o on d.id = o.validation_status_id where o.id = common_data_model.id) AS validation_status,
    (SELECT d.name_eng FROM public.cdm_validation_method as d 
	  join public.common_data_model as o on d.id = o.validation_method_id where o.id = common_data_model.id) AS validation_method,
    (SELECT d.name_eng FROM public.cdm_access_level as d 
	  join public.common_data_model as o on d.id = o.access_level_id where o.id = common_data_model.id) AS access_level,
    (SELECT d.name_eng FROM public.cdm_retention_class as d 
	  join public.common_data_model as o on d.id = o.retention_class_id where o.id = common_data_model.id) AS retention_class,
    (SELECT d.name_eng FROM public.cdm_compliance_relevance as d 
	  join public.common_data_model as o on d.id = o.compliance_relevance_id where o.id = common_data_model.id) AS compliance_relevance,
    (SELECT d.name_eng FROM public.cdm_suspected_violation_type as d 
	  join public.common_data_model as o on d.id = o.suspected_violation_type_id where o.id = common_data_model.id) AS suspected_violation_type,
    (SELECT d.name_eng FROM public.cdm_regulatory_domain as d 
	  join public.common_data_model as o on d.id = o.regulatory_domain_id where o.id = common_data_model.id) AS regulatory_domain,
    (SELECT d.name_eng FROM public.cdm_evidence_status as d 
	  join public.common_data_model as o on d.id = o.evidence_status_id where o.id = common_data_model.id) AS evidence_status,
    (SELECT d.name_eng FROM public.cdm_evidence_access_restriction as d 
	  join public.common_data_model as o on d.id = o.evidence_access_restriction_id where o.id = common_data_model.id) AS evidence_access_restriction,
    (SELECT d.name_eng FROM public.cdm_device_or_sensor as d 
	  join public.common_data_model as o on d.id = o.device_or_sensor_id where o.id = common_data_model.id) AS device_or_sensor,
    (SELECT d.name_eng FROM public.cdm_licence as d 
	  join public.common_data_model as o on d.id = o.licence_id where o.id = common_data_model.id) AS licence,
   authority_notified,
   authority_reference,
   campaign_id,
   case_study_id,
   chain_of_custody_reference,
   contributor_id,
   created_at,
   description,
   end_time,
   evidence_id,
   geometry,
   location_accuracy_m,
   modified_at,
   observation_id,
   observation_time,
   original_evidence_hash,
   original_record_id,
   personal_data_flag,
   processing_activity_ref,
   protocol_id,
   protocol_version,
   provenance_record,
   quality_score,
   record_version,
   submission_time,
   validator_id,
   value
   FROM public.common_data_model;

CREATE OR REPLACE FUNCTION ST_CommonDataModelToGeoJson()
RETURNS jsonb AS
$BODY$
    SELECT jsonb_build_object(
        'type',     'FeatureCollection',
        'features', jsonb_agg(feature)
    )
    FROM (
      SELECT jsonb_build_object(
        'type',       'Feature',
        'id',         row.id,
        'geometry',   ST_GeomFromGeoJSON(geometry),
        'properties', to_jsonb(row) - 'id' - 'geometry'
      ) AS feature
      FROM (SELECT * FROM public.cdm_full_properties limit 200) row) features;
$BODY$
LANGUAGE SQL;
    
create or replace function filter(filter_expression text)
returns table (t1 public.cdm_full_properties) as $$
begin
  return query execute format('select * from public.cdm_full_properties where %s', $1);
end;
$$ language plpgsql;
   
CREATE OR REPLACE FUNCTION ST_CommonDataModelToGeoJsonFilter(filter_expression text)
RETURNS jsonb AS
$BODY$
    SELECT jsonb_build_object(
        'type',     'FeatureCollection',
        'features', jsonb_agg(feature)
    )
    FROM (
      SELECT jsonb_build_object(
        'type',       'Feature',
        'id',         row.id,
        'geometry',   ST_GeomFromGeoJSON(geometry),
        'properties', to_jsonb(row) - 'id' - 'geometry'
      ) AS feature
      FROM (SELECT * FROM filter($1)) row) features;
$BODY$
LANGUAGE SQL;
    