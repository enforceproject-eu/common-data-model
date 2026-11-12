package org.n52.project.enforce.cdm;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

/**
 * <p>
 * CdmObservationType DTO.
 * </p>
 *
 * @author Benjamin Pross (b.pross @52north.org)
 * @since 1.0.0
 */
@Entity
@Table(
        name = "cdm_observation_type")
public class CdmObservationType {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cdm_observation_type_generator")
    @SequenceGenerator(name = "cdm_observation_type_generator", sequenceName = "cdm_observation_type_seq", allocationSize = 1)
    private Integer id;
    
    @Column(
            name = "code")
    private String code;
    
    @Column(
            name = "name_eng")
    private String nameEng;
    
    public CdmObservationType() { }

    public CdmObservationType(Integer id) {
        this.id = id;
    }

    public CdmObservationType(Integer id, String code, String nameEng) {
        this(id);
        this.code = code;
        this.nameEng = nameEng;
    }

    public CdmObservationType(String code, String nameEng) {
        this();
        this.code = code;
        this.nameEng = nameEng;
    }

    public CdmObservationType(String code) {
        this();
        this.code = code;
        this.nameEng = "";
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getNameEng() {
        return nameEng;
    }

    public void setNameEng(String nameEng) {
        this.nameEng = nameEng;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id: " + id + ", ");
        sb.append("code" + code + ", ");
        sb.append("nameEng" + nameEng);
        return sb.toString();
    }
}
