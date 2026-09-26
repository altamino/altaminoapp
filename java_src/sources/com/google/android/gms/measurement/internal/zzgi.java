package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
public final class zzgi {
    private final String zza;
    private final long zzb;
    private boolean zzc;
    private long zzd;
    private final /* synthetic */ zzgd zze;

    @WorkerThread
    public final long zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zze.zzc().getLong(this.zza, this.zzb);
        }
        return this.zzd;
    }

    public zzgi(zzgd zzgdVar, String str, long j6) {
        this.zze = zzgdVar;
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        this.zzb = j6;
    }

    @WorkerThread
    public final void zza(long j6) {
        SharedPreferences.Editor editorEdit = this.zze.zzc().edit();
        editorEdit.putLong(this.zza, j6);
        editorEdit.apply();
        this.zzd = j6;
    }
}
