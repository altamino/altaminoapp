package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes7.dex */
final class zzfu extends ContentObserver {
    zzfu(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z6) {
        zzfr.zze.set(true);
    }
}
