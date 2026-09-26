package com.narvii.scene.template.response;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.model.TemplateConfig;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class TemplateResponse extends ApiResponse {

    @JsonDeserialize(contentAs = TemplateConfig.class)
    public List<TemplateConfig> storyTemplateList;
}
