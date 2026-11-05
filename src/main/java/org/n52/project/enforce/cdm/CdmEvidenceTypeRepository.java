package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmEvidenceTypeRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmEvidenceTypeRepository extends JpaRepository<CdmEvidenceType, Integer> {
    
    @Query("select d from CdmEvidenceType as d where d.name ilike :name")
    CdmEvidenceType findByName(@Param("name") String name);
}
