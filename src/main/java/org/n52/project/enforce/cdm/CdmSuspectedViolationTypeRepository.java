package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmSuspectedViolationTypeRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmSuspectedViolationTypeRepository extends JpaRepository<CdmSuspectedViolationType, Integer> {
    
    @Query("select d from CdmSuspectedViolationType as d where d.name ilike :name")
    CdmSuspectedViolationType findByName(@Param("name") String name);
}
