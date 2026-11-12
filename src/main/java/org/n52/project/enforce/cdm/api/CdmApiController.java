package org.n52.project.enforce.cdm.api;

import org.n52.project.enforce.cdm.CommonDataModelRepository;
import org.n52.project.enforce.cdm.model.Error;
import org.n52.project.enforce.cdm.model.FeatureCollection;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.context.request.NativeWebRequest;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import jakarta.annotation.Generated;

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
    public ResponseEntity<?> getCdmData() {
        try {
            return ResponseEntity.ok(commonDataModelRepository.getGeoJson());
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

}
