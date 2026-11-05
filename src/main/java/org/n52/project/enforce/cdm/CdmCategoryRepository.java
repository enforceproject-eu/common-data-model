package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmCategoryRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmCategoryRepository extends JpaRepository<CdmCategory, Integer> {
    
    @Query("select d from CdmCategory as d where d.name ilike :name")
    CdmCategory findByName(@Param("name") String name);
}
