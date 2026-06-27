package com.narvii.post;

import com.narvii.model.api.ApiResponse;

/* loaded from: classes3.dex */
public interface PostListener {
    void onPostFail(PostHelper postHelper, int i, String str, Throwable th);

    void onPostFinished(PostHelper postHelper, ApiResponse apiResponse);

    void onPostProgress(PostHelper postHelper, int i, int i2);

    void onPostStart(PostHelper postHelper);
}
