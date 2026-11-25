package org.n52.project.enforce.cdm.api;

import org.n52.project.enforce.cdm.CommonDataModelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.annotation.Generated;
import jakarta.validation.Valid;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-11-11T11:21:39.342594600+01:00[Europe/Berlin]", comments = "Generator version: 7.25.0")
@Controller
@RequestMapping("${openapi.eNFORCECommonDataModelAccess.base-path:}")
public class CdmApiController implements CdmApi {
    
    private CommonDataModelRepository commonDataModelRepository;
    
    @Autowired
    public CdmApiController(CommonDataModelRepository commonDataModelRepository) {
        this.commonDataModelRepository = commonDataModelRepository;
    }

    @Override
    public ResponseEntity<?> getCdmData(@Valid String filterExpression) {

        try {
        if(filterExpression != null && !filterExpression.isEmpty()) {
            return ResponseEntity.ok(commonDataModelRepository.getGeoJson(filterExpression));
        }else {
            return ResponseEntity.ok(commonDataModelRepository.getGeoJson());
        }
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }


}
