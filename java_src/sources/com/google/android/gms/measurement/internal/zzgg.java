package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
public final class zzgg {
    private final String zza;
    private final boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private final /* synthetic */ zzgd zze;

    @WorkerThread
    public final void zza(boolean z6) {
        SharedPreferences.Editor editorEdit = this.zze.zzc().edit();
        editorEdit.putBoolean(this.zza, z6);
        editorEdit.apply();
        this.zzd = z6;
    }

    public zzgg(zzgd zzgdVar, String str, boolean z6) {
        this.zze = zzgdVar;
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        this.zzb = z6;
    }

    @WorkerThread
    public final boolean zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zze.zzc().getBoolean(this.zza, this.zzb);
        }
        return this.zzd;
    }
}
