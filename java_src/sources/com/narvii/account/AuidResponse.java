package com.narvii.account;

import com.narvii.model.api.ApiResponse;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AuidResponse extends ApiResponse {

    @Nullable
    private String auid;

    @Nullable
    public final String getAuid() {
        return this.auid;
    }

    public final void setAuid(@Nullable String str) {
        this.auid = str;
    }
}
