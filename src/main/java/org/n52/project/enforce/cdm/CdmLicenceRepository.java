package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmLicenceRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmLicenceRepository extends JpaRepository<CdmLicence, Integer> {
    
    @Query("select d from CdmLicence as d where d.name ilike :name")
    CdmLicence findByName(@Param("name") String name);
}
