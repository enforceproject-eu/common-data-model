package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmComplianceRelevanceRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmComplianceRelevanceRepository extends JpaRepository<CdmComplianceRelevance, Integer> {
    
    @Query("select d from CdmComplianceRelevance as d where d.name ilike :name")
    CdmComplianceRelevance findByName(@Param("name") String name);
}
