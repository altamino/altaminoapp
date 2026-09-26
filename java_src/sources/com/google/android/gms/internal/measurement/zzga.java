package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes7.dex */
final class zzga extends ContentObserver {
    private final /* synthetic */ zzfy zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzga(zzfy zzfyVar, Handler handler) {
        super(null);
        this.zza = zzfyVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z6) {
        this.zza.zzd();
    }
}
