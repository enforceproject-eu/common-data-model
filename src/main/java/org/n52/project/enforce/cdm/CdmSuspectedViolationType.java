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
 * CdmSuspectedViolationType DTO.
 * </p>
 *
 * @author Benjamin Pross (b.pross @52north.org)
 * @since 1.0.0
 */
@Entity
@Table(
        name = "cdm_suspected_violation_type")
public class CdmSuspectedViolationType {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cdm_suspected_violation_type_generator")
    @SequenceGenerator(name = "cdm_suspected_violation_type_generator", sequenceName = "cdm_suspected_violation_type_seq", allocationSize = 1)
    private Integer id;
    
    @Column(
            name = "name")
    private String name;
    
    @Column(
            name = "name_eng")
    private String nameEng;
    
    public CdmSuspectedViolationType() { }

    public CdmSuspectedViolationType(Integer id) {
        this.id = id;
    }

    public CdmSuspectedViolationType(Integer id, String name, String nameEng) {
        this(id);
        this.name = name;
        this.nameEng = nameEng;
    }

    public CdmSuspectedViolationType(String name, String nameEng) {
        this();
        this.name = name;
        this.nameEng = nameEng;
    }

    public CdmSuspectedViolationType(String name) {
        this();
        this.name = name;
        this.nameEng = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        sb.append("name" + name + ", ");
        sb.append("nameEng" + nameEng);
        return sb.toString();
    }
}
