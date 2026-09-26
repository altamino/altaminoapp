package com.narvii.chat.core;

import com.narvii.model.api.ApiResponse;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class GlobalThreadCheckResultMapResponse extends ApiResponse {

    @Nullable
    private HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities;

    @Nullable
    private List<Integer> treatedNdcIds;

    @Nullable
    public HashMap<Integer, List<ThreadCheckInfo>> getThreadCheckResultInCommunities() {
        return this.threadCheckResultInCommunities;
    }

    @Nullable
    public List<Integer> getTreatedNdcIds() {
        return this.treatedNdcIds;
    }

    public void setThreadCheckResultInCommunities(@Nullable HashMap<Integer, List<ThreadCheckInfo>> map) {
        this.threadCheckResultInCommunities = map;
    }

    public void setTreatedNdcIds(@Nullable List<Integer> list) {
        this.treatedNdcIds = list;
    }
}
