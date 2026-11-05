package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmCollectionMethodRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmCollectionMethodRepository extends JpaRepository<CdmCollectionMethod, Integer> {
    
    @Query("select d from CdmCollectionMethod as d where d.name ilike :name")
    CdmCollectionMethod findByName(@Param("name") String name);
}
