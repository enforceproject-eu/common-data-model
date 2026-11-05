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
    
CREATE TABLE IF NOT EXISTS public.cdm_observation_type
(
    id int NOT NULL,
    name character varying(255),
    name_eng character varying(255),
    CONSTRAINT cdm_observation_type_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE IF NOT EXISTS public.cdm_observation_type_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    
    
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
    
CREATE TABLE IF NOT EXISTS public.common_data_model
(
    id int NOT NULL,
    authority_notified boolean,
    authority_reference character varying(255),
    campaign_id character varying(255),
    case_study_id character varying(255),
    chain_of_custody_reference character varying(255),
    contributor_id character varying(255),
    created_at timestamp with time zone,
    description character varying(255),
    end_time timestamp with time zone,
    evidence_id character varying(255),
    geometry geometry(Point,4326),
    location_accuracy_m double precision,
    modified_at timestamp with time zone,
    observation_id character varying(255),
    observation_time timestamp with time zone,
    original_evidence_hash character varying(255),
    original_record_id character varying(255),
    personal_data_flag boolean,
    processing_activity_ref character varying(255),
    protocol_id character varying(255),
    protocol_version character varying(255),
    provenance_record character varying(255),
    quality_score double precision,
    record_version character varying(255),
    submission_time timestamp with time zone,
    validator_id character varying(255),
    "value" character varying(255),
    sensitive_content_flag_id int,
    observation_type_id int,
    observed_property_id int,
    unit_id int,
    category_id int,
    location_source_id int,
    contributor_role_id int,
    collection_method_id int,
    evidence_type_id int,
    validation_status_id int,
    validation_method_id int,
    access_level_id int,
    retention_class_id int,
    compliance_relevance_id int,
    suspected_violation_type_id int,
    regulatory_domain_id int,
    evidence_status_id int,
    evidence_access_restriction_id int,
    device_or_sensor_id int,
    licence_id int,
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
        ON UPDATE NO ACTION
);

CREATE SEQUENCE IF NOT EXISTS public.common_data_model_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 100
    CACHE 1;    

    