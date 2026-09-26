package com.narvii.detail;

import com.narvii.app.NVFragment;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes9.dex */
public class DetailPushUtils {
    public static final String PUSH_TRACK_ID = "Push-Track-Id";

    public static void addPushTrackIdInRequest(ApiRequest.Builder builder, DetailAdapter detailAdapter) {
        if (builder == null || detailAdapter == null) {
            return;
        }
        if (!(detailAdapter.getParentContext() instanceof NVFragment)) {
            Log.e("parent of detail adapter is not NVFragment");
            return;
        }
        String pushTrackId = ((NVFragment) detailAdapter.getParentContext()).getPushTrackId();
        if (pushTrackId != null) {
            builder.headers(PUSH_TRACK_ID, pushTrackId);
        }
    }
}
