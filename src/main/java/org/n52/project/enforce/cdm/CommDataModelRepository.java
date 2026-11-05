package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * <p>
 * CdmValidationStatusRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CommDataModelRepository extends JpaRepository<CommonDataModel, Integer> {
    
}
