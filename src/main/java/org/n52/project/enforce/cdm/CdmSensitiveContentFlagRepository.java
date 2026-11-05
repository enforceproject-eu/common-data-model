package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmSensitiveContentFlagRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmSensitiveContentFlagRepository extends JpaRepository<CdmSensitiveContentFlag, Integer> {
    
    @Query("select d from CdmSensitiveContentFlag as d where d.name ilike :name")
    CdmSensitiveContentFlag findByName(@Param("name") String name);
}
