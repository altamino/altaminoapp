package com.narvii.scene.template.response;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.model.TemplateConfig;
import java.util.List;

/* loaded from: classes3.dex */
public class TemplateResponse extends ApiResponse {

    @JsonDeserialize(contentAs = TemplateConfig.class)
    public List<TemplateConfig> storyTemplateList;
}
