package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * <p>
 * CdmValidationStatusRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CommonDataModelRepository extends JpaRepository<CommonDataModel, Integer> {
 

    /**
     * <p>
     * getGeoJson.
     * </p>
     * 
     * @return a {@link String} object
     */
    @Query("select st_commondatamodeltogeojson()")
    String getGeoJson();
    
}
