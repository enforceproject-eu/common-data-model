package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmUnitRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmUnitRepository extends JpaRepository<CdmUnit, Integer> {
    
    @Query("select d from CdmUnit as d where d.name ilike :name")
    CdmUnit findByName(@Param("name") String name);
}
