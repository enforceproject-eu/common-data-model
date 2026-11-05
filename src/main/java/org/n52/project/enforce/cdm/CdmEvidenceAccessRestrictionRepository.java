package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmEvidenceAccessRestrictionRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmEvidenceAccessRestrictionRepository extends JpaRepository<CdmEvidenceAccessRestriction, Integer> {
    
    @Query("select d from CdmEvidenceAccessRestriction as d where d.name ilike :name")
    CdmEvidenceAccessRestriction findByName(@Param("name") String name);
}
