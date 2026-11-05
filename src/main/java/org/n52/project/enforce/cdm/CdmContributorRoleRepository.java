package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmContributorRoleRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmContributorRoleRepository extends JpaRepository<CdmContributorRole, Integer> {
    
    @Query("select d from CdmContributorRole as d where d.name ilike :name")
    CdmContributorRole findByName(@Param("name") String name);
}
