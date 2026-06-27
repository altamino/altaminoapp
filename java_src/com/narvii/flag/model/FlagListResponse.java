package com.narvii.flag.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagListResponse extends ListResponse<Flag> {

    @JsonDeserialize(contentAs = Flag.class)
    public List<Flag> flagList;

    @Override // com.narvii.model.api.ListResponse
    public List<Flag> list() {
        return this.flagList;
    }
}
