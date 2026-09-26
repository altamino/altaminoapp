package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: loaded from: classes5.dex */
@KeepForSdk
public class HashAccumulator {
    private int zaa = 1;

    @KeepForSdk
    public int hash() {
        return this.zaa;
    }

    @NonNull
    public final HashAccumulator zaa(boolean z6) {
        this.zaa = (this.zaa * 31) + (z6 ? 1 : 0);
        return this;
    }

    @NonNull
    @KeepForSdk
    public HashAccumulator addObject(@Nullable Object obj) {
        this.zaa = (this.zaa * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }
}
