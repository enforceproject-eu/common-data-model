package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmValidationMethodRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmValidationMethodRepository extends JpaRepository<CdmValidationMethod, Integer> {
    
    @Query("select d from CdmValidationMethod as d where d.name ilike :name")
    CdmValidationMethod findByName(@Param("name") String name);
}
