package org.n52.project.enforce.cdm;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmValidationStatusRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CommonDataModelRepository extends JpaRepository<CommonDataModel, Integer> {
 
    @Query("select c from CommonDataModel as c where :propertyName = :value")
    List<CommonDataModel> filter(@Param("propertyName") String propertyName, @Param("value") String value);
    
    /**
     * <p>
     * getGeoJson.
     * </p>
     * 
     * @return a {@link String} object
     */
    @Query("select st_commondatamodeltogeojson()")
    String getGeoJson();
    
    /**
     * <p>
     * getGeoJson.
     * </p>
     * 
     * @return a {@link String} object
     */
    @Query("select st_commondatamodeltogeojsonfilter(:expression)")
    String getGeoJson(@Param("expression") String expression);
        
}
