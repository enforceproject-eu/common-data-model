package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmObservedPropertyRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmObservedPropertyRepository extends JpaRepository<CdmObservedProperty, Integer> {
    
    @Query("select d from CdmObservedProperty as d where d.name ilike :name")
    CdmObservedProperty findByName(@Param("name") String name);
}
