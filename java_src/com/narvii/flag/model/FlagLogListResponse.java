package com.narvii.flag.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagLogListResponse extends ListResponse<FlagLog> {

    @JsonDeserialize(contentAs = FlagLog.class)
    public List<FlagLog> flagLogList;

    @Override // com.narvii.model.api.ListResponse
    public List<FlagLog> list() {
        return this.flagLogList;
    }
}
