package com.narvii.paging.source;

import com.narvii.util.http.ApiRequest;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface DataSourceInterceptor {
    @Nullable
    ApiRequest getInterceptedRequest(@Nullable ApiRequest apiRequest);
}
