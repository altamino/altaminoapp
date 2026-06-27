package com.narvii.monetization.bubble;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import com.narvii.monetization.bubble.model.BubbleTemplate;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleTemplateListResponse extends ListResponse<BubbleTemplate> {

    @JsonDeserialize(contentAs = BubbleTemplate.class)
    public List<BubbleTemplate> templateList;

    @Override // com.narvii.model.api.ListResponse
    public List<BubbleTemplate> list() {
        return this.templateList;
    }
}
