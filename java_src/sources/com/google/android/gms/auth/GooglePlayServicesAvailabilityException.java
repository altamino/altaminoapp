package com.google.android.gms.auth;

import android.content.Intent;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int zza;

    public int getConnectionStatusCode() {
        return this.zza;
    }

    GooglePlayServicesAvailabilityException(int i10, @Nullable String str, @Nullable Intent intent) {
        super(str, intent);
        this.zza = i10;
    }
}
