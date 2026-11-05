package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmRegulatoryDomainRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmRegulatoryDomainRepository extends JpaRepository<CdmRegulatoryDomain, Integer> {
    
    @Query("select d from CdmRegulatoryDomain as d where d.name ilike :name")
    CdmRegulatoryDomain findByName(@Param("name") String name);
}
