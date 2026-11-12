package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmObservationTypeRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmObservationTypeRepository extends JpaRepository<CdmObservationType, Integer> {
    
    @Query("select d from CdmObservationType as d where d.code ilike :code")
    CdmObservationType findByName(@Param("code") String code);
}
