package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmAccessLevelRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmAccessLevelRepository extends JpaRepository<CdmAccessLevel, Integer> {
    
    @Query("select d from CdmAccessLevel as d where d.name ilike :name")
    CdmAccessLevel findByName(@Param("name") String name);
}
