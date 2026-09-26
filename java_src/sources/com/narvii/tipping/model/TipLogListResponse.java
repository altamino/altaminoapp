package com.narvii.tipping.model;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class TipLogListResponse extends ListResponse<TipLog> {
    public TipSummary globalTipSummary;
    public TipSummary tipSummary;
    public List<TipLog> tippedUserList;

    @Override // com.narvii.model.api.ListResponse
    public List<TipLog> list() {
        return this.tippedUserList;
    }
}
