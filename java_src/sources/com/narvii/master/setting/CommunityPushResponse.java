package com.narvii.master.setting;

import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes7.dex */
public class CommunityPushResponse extends ApiResponse {
    public boolean pushEnabled;
    public CommunitySubPushSetting pushExtensions;

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CommunityPushResponse m1565clone() {
        return (CommunityPushResponse) JacksonUtils.readAs(JacksonUtils.writeAsString(this), getClass());
    }
}
