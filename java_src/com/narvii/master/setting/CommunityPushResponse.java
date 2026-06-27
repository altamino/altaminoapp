package com.narvii.master.setting;

import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class CommunityPushResponse extends ApiResponse {
    public boolean pushEnabled;
    public CommunitySubPushSetting pushExtensions;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CommunityPushResponse m44clone() {
        return (CommunityPushResponse) JacksonUtils.readAs(JacksonUtils.writeAsString(this), CommunityPushResponse.class);
    }
}
