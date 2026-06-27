package com.narvii.topic.model.discover;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class ContentModuleListResponse extends ListResponse<ContentModule> {

    @JsonDeserialize(contentAs = ContentModule.class)
    public List<ContentModule> contentModuleList;

    @Override // com.narvii.model.api.ListResponse
    public List<ContentModule> list() {
        return this.contentModuleList;
    }
}
