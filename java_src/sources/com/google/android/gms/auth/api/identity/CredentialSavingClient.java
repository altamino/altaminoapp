package com.google.android.gms.auth.api.identity;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes2.dex */
public interface CredentialSavingClient extends HasApiKey<zbc> {
    @NonNull
    Task<SaveAccountLinkingTokenResult> saveAccountLinkingToken(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest);

    @NonNull
    Task<SavePasswordResult> savePassword(@NonNull SavePasswordRequest savePasswordRequest);
}
