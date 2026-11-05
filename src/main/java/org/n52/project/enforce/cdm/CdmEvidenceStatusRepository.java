package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmEvidenceStatusRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmEvidenceStatusRepository extends JpaRepository<CdmEvidenceStatus, Integer> {
    
    @Query("select d from CdmEvidenceStatus as d where d.name ilike :name")
    CdmEvidenceStatus findByName(@Param("name") String name);
}
