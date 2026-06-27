package com.narvii.account.notice;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class AccountNoticeListResponse extends ListResponse<AccountNotice> {

    @JsonDeserialize(contentAs = Community.class, keyAs = Integer.class)
    public Map<Integer, Community> communityMap;
    public int noticeCount = -1;

    @JsonDeserialize(contentAs = AccountNotice.class)
    public List<AccountNotice> noticeList;

    @Override // com.narvii.model.api.ListResponse
    public List<AccountNotice> list() {
        return this.noticeList;
    }

    public int getNoticeCount() {
        if (this.noticeCount < 0) {
            this.noticeCount = 0;
        }
        return this.noticeCount;
    }
}
