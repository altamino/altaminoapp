package com.narvii.poweruser.history;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ModerationHistoryListResponse extends ListResponse<ModerationHistory> {
    public List<ModerationHistory> adminLogList;

    @Override // com.narvii.model.api.ListResponse
    public List<ModerationHistory> list() {
        return this.adminLogList;
    }
}
