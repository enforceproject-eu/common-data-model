package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmValidationStatusRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmValidationStatusRepository extends JpaRepository<CdmValidationStatus, Integer> {
    
    @Query("select d from CdmValidationStatus as d where d.name ilike :name")
    CdmValidationStatus findByName(@Param("name") String name);
}
