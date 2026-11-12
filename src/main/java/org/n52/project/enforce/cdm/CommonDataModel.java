package org.n52.project.enforce.cdm;

import java.time.OffsetDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

/**
 * <p>
 * CommonDataModel DTO.
 * </p>
 *
 * @author Benjamin Pross (b.pross @52north.org)
 * @since 1.0.0
 */
@Entity
@Table(
        name = "common_data_model")
public class CommonDataModel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "common_data_model_generator")
    @SequenceGenerator(name = "common_data_model_generator", sequenceName = "common_data_model_seq", allocationSize = 1)
    private Integer id;

    @Column(
            name = "authority_notified")
    private Boolean authorityNotified;

    @Column(
            name = "authority_reference")
    private String authorityReference;

    @Column(
            name = "campaign_id")
    private String campaignId;

    @Column(
            name = "case_study_id")
    private int caseStudyId = 1;

    @Column(
            name = "chain_of_custody_reference")
    private String chainOfCustodyReference;

    @Column(
            name = "contributor_id")
    private String contributorId;

    @Column(
            name = "created_at")
    private OffsetDateTime createdAt;

    @Column(
            name = "description")
    private String description;

    @Column(
            name = "end_time")
    private OffsetDateTime endTime;

    @Column(
            name = "evidence_id")
    private String evidenceId;

    @Column(
            name = "geometry")
    private String geometry;

    @Column(
            name = "location_accuracy_m")
    private Double locationAccuracyM;

    @Column(
            name = "modified_at")
    private OffsetDateTime modifiedAt;

    @Column(
            name = "observation_id")
    private String observationId;

    @Column(
            name = "observation_time")
    private OffsetDateTime observationTime;

    @Column(
            name = "original_evidence_hash")
    private String originalEvidenceHash;

    @Column(
            name = "original_record_id")
    private String originalRecordId;

    @Column(
            name = "personal_data_flag")
    private Boolean personalDataFlag;

    @Column(
            name = "processing_activity_ref")
    private String processingActivityRef;

    @Column(
            name = "protocol_id")
    private String protocolId;

    @Column(
            name = "protocol_version")
    private String protocolVersion;

    @Column(
            name = "provenance_record")
    private String provenanceRecord;

    @Column(
            name = "quality_score")
    private Double qualityScore;

    @Column(
            name = "record_version")
    private String recordVersion;

    @Column(
            name = "submission_time")
    private OffsetDateTime submissionTime;

    @Column(
            name = "validator_id")
    private String validatorId;

    @Column(
            name = "value")
    private String value;

    @Column(
            name = "sensitive_content_flag_id")
    private int sensitiveContentFlagId = 1;

    @Column(
            name = "observation_type_id")
    private int observationTypeId = 1;

    @Column(
            name = "observed_property_id")
    private int observedPropertyId = 1;

    @Column(
            name = "unit_id")
    private int unitId = 1;

    @Column(
            name = "category_id")
    private int categoryId = 1;

    @Column(
            name = "location_source_id")
    private int locationSourceId = 1;

    @Column(
            name = "contributor_role_id")
    private int contributorRoleId = 1;

    @Column(
            name = "collection_method_id")
    private int collectionMethodId = 1;

    @Column(
            name = "evidence_type_id")
    private int evidenceTypeId = 1;

    @Column(
            name = "validation_status_id")
    private int validationStatusId = 1;

    @Column(
            name = "validation_method_id")
    private int validationMethodId = 1;

    @Column(
            name = "access_level_id")
    private int accessLevelId = 1;

    @Column(
            name = "retention_class_id")
    private int retentionClassId = 1;

    @Column(
            name = "compliance_relevance_id")
    private int complianceRelevanceId = 1;

    @Column(
            name = "suspected_violation_type_id")
    private int suspectedViolationTypeId = 1;

    @Column(
            name = "regulatory_domain_id")
    private int regulatoryDomainId = 1;

    @Column(
            name = "evidence_status_id")
    private int evidenceStatusId = 1;

    @Column(
            name = "evidence_access_restriction_id")
    private int evidenceAccessRestrictionId = 1;

    @Column(
            name = "device_or_sensor_id")
    private int deviceOrSensorId = 1;

    @Column(
            name = "licence_id")
    private int licenceId = 1;

    public CommonDataModel(int caseStudyId, OffsetDateTime createdAt, OffsetDateTime modifiedAt,
            String observationId, OffsetDateTime observationTime, Boolean personalDataFlag, String recordVersion,
            OffsetDateTime submissionTime, int observationTypeId, int observedPropertyId, int collectionMethodId,
            int validationStatusId, int accessLevelId, int licenceId) {
        this.caseStudyId = caseStudyId;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
        this.observationId = observationId;
        this.observationTime = observationTime;
        this.personalDataFlag = personalDataFlag;
        this.recordVersion = recordVersion;
        this.submissionTime = submissionTime;
        this.observationTypeId = observationTypeId;
        this.observedPropertyId = observedPropertyId;
        this.collectionMethodId = collectionMethodId;
        this.validationStatusId = validationStatusId;
        this.accessLevelId = accessLevelId;
        this.licenceId = licenceId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getAuthorityNotified() {
        return authorityNotified;
    }

    public void setAuthorityNotified(Boolean authorityNotified) {
        this.authorityNotified = authorityNotified;
    }

    public String getAuthorityReference() {
        return authorityReference;
    }

    public void setAuthorityReference(String authorityReference) {
        this.authorityReference = authorityReference;
    }

    public String getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(String campaignId) {
        this.campaignId = campaignId;
    }

    public int getCaseStudyId() {
        return caseStudyId;
    }

    public void setCaseStudyId(int caseStudyId) {
        this.caseStudyId = caseStudyId;
    }

    public String getChainOfCustodyReference() {
        return chainOfCustodyReference;
    }

    public void setChainOfCustodyReference(String chainOfCustodyReference) {
        this.chainOfCustodyReference = chainOfCustodyReference;
    }

    public String getContributorId() {
        return contributorId;
    }

    public void setContributorId(String contributorId) {
        this.contributorId = contributorId;
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(OffsetDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public OffsetDateTime getEndTime() {
        return endTime;
    }

    public void setEndTime(OffsetDateTime endTime) {
        this.endTime = endTime;
    }

    public String getEvidenceId() {
        return evidenceId;
    }

    public void setEvidenceId(String evidenceId) {
        this.evidenceId = evidenceId;
    }

    public String getGeometry() {
        return geometry;
    }

    public void setGeometry(String geometry) {
        this.geometry = geometry;
    }

    public Double getLocationAccuracyM() {
        return locationAccuracyM;
    }

    public void setLocationAccuracyM(Double locationAccuracyM) {
        this.locationAccuracyM = locationAccuracyM;
    }

    public OffsetDateTime getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(OffsetDateTime modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    public String getObservationId() {
        return observationId;
    }

    public void setObservationId(String observationId) {
        this.observationId = observationId;
    }

    public OffsetDateTime getObservationTime() {
        return observationTime;
    }

    public void setObservationTime(OffsetDateTime observationTime) {
        this.observationTime = observationTime;
    }

    public String getOriginalEvidenceHash() {
        return originalEvidenceHash;
    }

    public void setOriginalEvidenceHash(String originalEvidenceHash) {
        this.originalEvidenceHash = originalEvidenceHash;
    }

    public String getOriginalRecordId() {
        return originalRecordId;
    }

    public void setOriginalRecordId(String originalRecordId) {
        this.originalRecordId = originalRecordId;
    }

    public Boolean getPersonalDataFlag() {
        return personalDataFlag;
    }

    public void setPersonalDataFlag(Boolean personalDataFlag) {
        this.personalDataFlag = personalDataFlag;
    }

    public String getProcessingActivityRef() {
        return processingActivityRef;
    }

    public void setProcessingActivityRef(String processingActivityRef) {
        this.processingActivityRef = processingActivityRef;
    }

    public String getProtocolId() {
        return protocolId;
    }

    public void setProtocolId(String protocolId) {
        this.protocolId = protocolId;
    }

    public String getProtocolVersion() {
        return protocolVersion;
    }

    public void setProtocolVersion(String protocolVersion) {
        this.protocolVersion = protocolVersion;
    }

    public String getProvenanceRecord() {
        return provenanceRecord;
    }

    public void setProvenanceRecord(String provenanceRecord) {
        this.provenanceRecord = provenanceRecord;
    }

    public Double getQualityScore() {
        return qualityScore;
    }

    public void setQualityScore(Double qualityScore) {
        this.qualityScore = qualityScore;
    }

    public String getRecordVersion() {
        return recordVersion;
    }

    public void setRecordVersion(String recordVersion) {
        this.recordVersion = recordVersion;
    }

    public OffsetDateTime getSubmissionTime() {
        return submissionTime;
    }

    public void setSubmissionTime(OffsetDateTime submissionTime) {
        this.submissionTime = submissionTime;
    }

    public String getValidatorId() {
        return validatorId;
    }

    public void setValidatorId(String validatorId) {
        this.validatorId = validatorId;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int getSensitiveContentFlagId() {
        return sensitiveContentFlagId;
    }

    public void setSensitiveContentFlagId(int sensitiveContentFlagId) {
        this.sensitiveContentFlagId = sensitiveContentFlagId;
    }

    public int getObservationTypeId() {
        return observationTypeId;
    }

    public void setObservationTypeId(int observationTypeId) {
        this.observationTypeId = observationTypeId;
    }

    public int getObservedPropertyId() {
        return observedPropertyId;
    }

    public void setObservedPropertyId(int observedPropertyId) {
        this.observedPropertyId = observedPropertyId;
    }

    public int getUnitId() {
        return unitId;
    }

    public void setUnitId(int unitId) {
        this.unitId = unitId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getLocationSourceId() {
        return locationSourceId;
    }

    public void setLocationSourceId(int locationSourceId) {
        this.locationSourceId = locationSourceId;
    }

    public int getContributorRoleId() {
        return contributorRoleId;
    }

    public void setContributorRoleId(int contributorRoleId) {
        this.contributorRoleId = contributorRoleId;
    }

    public int getCollectionMethodId() {
        return collectionMethodId;
    }

    public void setCollectionMethodId(int collectionMethodId) {
        this.collectionMethodId = collectionMethodId;
    }

    public int getEvidenceTypeId() {
        return evidenceTypeId;
    }

    public void setEvidenceTypeId(int evidenceTypeId) {
        this.evidenceTypeId = evidenceTypeId;
    }

    public int getValidationStatusId() {
        return validationStatusId;
    }

    public void setValidationStatusId(int validationStatusId) {
        this.validationStatusId = validationStatusId;
    }

    public int getValidationMethodId() {
        return validationMethodId;
    }

    public void setValidationMethodId(int validationMethodId) {
        this.validationMethodId = validationMethodId;
    }

    public int getAccessLevelId() {
        return accessLevelId;
    }

    public void setAccessLevelId(int accessLevelId) {
        this.accessLevelId = accessLevelId;
    }

    public int getRetentionClassId() {
        return retentionClassId;
    }

    public void setRetentionClassId(int retentionClassId) {
        this.retentionClassId = retentionClassId;
    }

    public int getComplianceRelevanceId() {
        return complianceRelevanceId;
    }

    public void setComplianceRelevanceId(int complianceRelevanceId) {
        this.complianceRelevanceId = complianceRelevanceId;
    }

    public int getSuspectedViolationTypeId() {
        return suspectedViolationTypeId;
    }

    public void setSuspectedViolationTypeId(int suspectedViolationTypeId) {
        this.suspectedViolationTypeId = suspectedViolationTypeId;
    }

    public int getRegulatoryDomainId() {
        return regulatoryDomainId;
    }

    public void setRegulatoryDomainId(int regulatoryDomainId) {
        this.regulatoryDomainId = regulatoryDomainId;
    }

    public int getEvidenceStatusId() {
        return evidenceStatusId;
    }

    public void setEvidenceStatusId(int evidenceStatusId) {
        this.evidenceStatusId = evidenceStatusId;
    }

    public int getEvidenceAccessRestrictionId() {
        return evidenceAccessRestrictionId;
    }

    public void setEvidenceAccessRestrictionId(int evidenceAccessRestrictionId) {
        this.evidenceAccessRestrictionId = evidenceAccessRestrictionId;
    }

    public int getDeviceOrSensorId() {
        return deviceOrSensorId;
    }

    public void setDeviceOrSensorId(int deviceOrSensorId) {
        this.deviceOrSensorId = deviceOrSensorId;
    }

    public int getLicenceId() {
        return licenceId;
    }

    public void setLicenceId(int licenceId) {
        this.licenceId = licenceId;
    }

}
