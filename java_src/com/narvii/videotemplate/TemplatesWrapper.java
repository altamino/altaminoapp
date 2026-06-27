package com.narvii.videotemplate;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.scene.model.TemplateConfig;
import java.util.List;

/* loaded from: classes.dex */
public class TemplatesWrapper {

    @JsonDeserialize(contentAs = TemplateConfig.class)
    @JsonSerialize(contentAs = TemplateConfig.class)
    public List<TemplateConfig> templateConfigList;
}
