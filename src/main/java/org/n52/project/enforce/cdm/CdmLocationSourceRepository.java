package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmLocationSourceRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmLocationSourceRepository extends JpaRepository<CdmLocationSource, Integer> {
    
    @Query("select d from CdmLocationSource as d where d.name ilike :name")
    CdmLocationSource findByName(@Param("name") String name);
}
