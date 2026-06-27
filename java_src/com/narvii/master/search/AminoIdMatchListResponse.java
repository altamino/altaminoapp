package com.narvii.master.search;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class AminoIdMatchListResponse extends ListResponse<AminoIdInfo> {

    @JsonDeserialize(contentAs = AminoIdInfo.class)
    public List<AminoIdInfo> resultList;

    @Override // com.narvii.model.api.ListResponse
    public List<AminoIdInfo> list() {
        return this.resultList;
    }
}
