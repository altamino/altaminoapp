package com.narvii.suggest.interest;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class RcmdUserListResponse extends ListResponse<RcmdUser> {
    public List<RcmdUser> rcmdUsersList;

    @Override // com.narvii.model.api.ListResponse
    public List<RcmdUser> list() {
        return this.rcmdUsersList;
    }
}
