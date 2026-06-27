package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes2.dex */
final class zzcje implements zzban<SQLiteDatabase> {
    private final /* synthetic */ zzczc zzfyf;

    zzcje(zzcjc zzcjcVar, zzczc zzczcVar) {
        this.zzfyf = zzczcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        String strValueOf = String.valueOf(th.getMessage());
        zzbad.zzen(strValueOf.length() != 0 ? "Failed to get offline signal database: ".concat(strValueOf) : new String("Failed to get offline signal database: "));
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(SQLiteDatabase sQLiteDatabase) {
        try {
            this.zzfyf.apply(sQLiteDatabase);
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbad.zzen(strValueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(strValueOf) : new String("Error executing function on offline signal database: "));
        }
    }
}
