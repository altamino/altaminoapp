package com.narvii.post;

import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes6.dex */
public interface PostListener {
    void onPostFail(PostHelper postHelper, int i10, String str, Throwable th);

    void onPostFinished(PostHelper postHelper, ApiResponse apiResponse);

    void onPostProgress(PostHelper postHelper, int i10, int i11);

    void onPostStart(PostHelper postHelper);
}
