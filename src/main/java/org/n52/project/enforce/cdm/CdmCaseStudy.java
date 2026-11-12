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
 * Cdmcase_study DTO.
 * </p>
 *
 * @author Benjamin Pross (b.pross @52north.org)
 * @since 1.0.0
 */
@Entity
@Table(
        name = "cdm_case_study")
public class CdmCaseStudy {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cdm_case_study_generator")
    @SequenceGenerator(name = "cdm_case_study_generator", sequenceName = "cdm_case_study_seq", allocationSize = 1)
    private Integer id;
    
    @Column(
            name = "name")
    private String name;
    
    @Column(
            name = "decscription")
    private String decscription;
    
    public CdmCaseStudy() { }

    public CdmCaseStudy(Integer id) {
        this.id = id;
    }

    public CdmCaseStudy(Integer id, String name, String decscription) {
        this(id);
        this.name = name;
        this.decscription = decscription;
    }

    public CdmCaseStudy(String name, String decscription) {
        this();
        this.name = name;
        this.decscription = decscription;
    }

    public CdmCaseStudy(String name) {
        this();
        this.name = name;
        this.decscription = name;
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

    public String getDecscription() {
        return decscription;
    }

    public void setDecscription(String decscription) {
        this.decscription = decscription;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id: " + id + ", ");
        sb.append("name" + name + ", ");
        sb.append("decscription" + decscription);
        return sb.toString();
    }
}
