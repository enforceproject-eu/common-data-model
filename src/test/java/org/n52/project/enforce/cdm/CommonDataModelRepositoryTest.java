package org.n52.project.enforce.cdm;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.UUID;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

public class CommonDataModelRepositoryTest extends RepositoryTest {

    @Autowired
    CommonDataModelRepository commonDataModelRepository;    
    
    @Test
    void testCdmRepository() {
        
        String observationId = UUID.randomUUID().toString();
        CommonDataModel commonDataModel1 = new CommonDataModel(1, OffsetDateTime.now().minusDays(1), OffsetDateTime.now(), observationId, OffsetDateTime.now().minusDays(1), false, "1", OffsetDateTime.now(), 1, 1, 1, 1, 1, 1);
        
        commonDataModelRepository.saveAndFlush(commonDataModel1);
        
        List<CommonDataModel> results = commonDataModelRepository.filter("observation_id", observationId);
        
        assertNotNull(results);
     
        ObjectMapper objectMapper = new ObjectMapper();
        
        String geoJsonString = commonDataModelRepository.getGeoJson("observation_id", observationId);
//        String geoJsonString = commonDataModelRepository.getGeoJson();
        
        try {
            JsonNode featureCollection = objectMapper.readTree(geoJsonString);
            JsonNode features = featureCollection.get("features");
            assertTrue(features instanceof ArrayNode);
            assertTrue(((ArrayNode)features).size() > 0);
        } catch (JsonProcessingException e) {
            fail(e.getMessage());
        }
        
    }
    
}
