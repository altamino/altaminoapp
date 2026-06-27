package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class ExternalSourceListResponse extends ListResponse<ExternalSource> {

    @JsonDeserialize(contentAs = ExternalSource.class)
    public List<ExternalSource> externalSourceList;

    @Override // com.narvii.model.api.ListResponse
    public List<ExternalSource> list() {
        return this.externalSourceList;
    }
}
