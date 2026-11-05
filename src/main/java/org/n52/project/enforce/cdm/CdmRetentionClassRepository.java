package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmRetentionClassRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmRetentionClassRepository extends JpaRepository<CdmRetentionClass, Integer> {
    
    @Query("select d from CdmRetentionClass as d where d.name ilike :name")
    CdmRetentionClass findByName(@Param("name") String name);
}
