package org.n52.project.enforce.cdm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * <p>
 * CdmDeviceOrSensorRepository repository.
 * </p>
 *
 * @author Benjamin Pross 
 * @since 1.0.0
 */
public interface CdmDeviceOrSensorRepository extends JpaRepository<CdmDeviceOrSensor, Integer> {
    
    @Query("select d from CdmDeviceOrSensor as d where d.name ilike :name")
    CdmDeviceOrSensor findByName(@Param("name") String name);
}
