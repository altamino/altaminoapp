package com.narvii.chat.core;

import com.narvii.model.api.ApiResponse;
import java.util.HashMap;
import java.util.List;

/* compiled from: GlobalThreadCheckResultMapResponse.kt */
/* loaded from: classes2.dex */
public final class GlobalThreadCheckResultMapResponse extends ApiResponse {
    private HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities;
    private List<Integer> treatedNdcIds;

    public HashMap<Integer, List<ThreadCheckInfo>> getThreadCheckResultInCommunities() {
        return this.threadCheckResultInCommunities;
    }

    public void setThreadCheckResultInCommunities(HashMap<Integer, List<ThreadCheckInfo>> map) {
        this.threadCheckResultInCommunities = map;
    }

    public List<Integer> getTreatedNdcIds() {
        return this.treatedNdcIds;
    }

    public void setTreatedNdcIds(List<Integer> list) {
        this.treatedNdcIds = list;
    }
}
