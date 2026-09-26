package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
public final class zzgh {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;
    private final /* synthetic */ zzgd zze;

    @WorkerThread
    public final Pair<String, Long> zza() {
        long jAbs;
        this.zze.zzt();
        this.zze.zzt();
        long jZzb = zzb();
        if (jZzb == 0) {
            zzc();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jZzb - this.zze.zzb().currentTimeMillis());
        }
        long j6 = this.zzd;
        if (jAbs < j6) {
            return null;
        }
        if (jAbs > (j6 << 1)) {
            zzc();
            return null;
        }
        String string = this.zze.zzc().getString(this.zzc, null);
        long j10 = this.zze.zzc().getLong(this.zzb, 0L);
        zzc();
        return (string == null || j10 <= 0) ? zzgd.zza : new Pair<>(string, Long.valueOf(j10));
    }

    private zzgh(zzgd zzgdVar, String str, long j6) {
        this.zze = zzgdVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j6 > 0);
        this.zza = str + ":start";
        this.zzb = str + ":count";
        this.zzc = str + ":value";
        this.zzd = j6;
    }

    @WorkerThread
    private final long zzb() {
        return this.zze.zzc().getLong(this.zza, 0L);
    }

    @WorkerThread
    private final void zzc() {
        this.zze.zzt();
        long jCurrentTimeMillis = this.zze.zzb().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.zze.zzc().edit();
        editorEdit.remove(this.zzb);
        editorEdit.remove(this.zzc);
        editorEdit.putLong(this.zza, jCurrentTimeMillis);
        editorEdit.apply();
    }

    @WorkerThread
    public final void zza(String str, long j6) {
        this.zze.zzt();
        if (zzb() == 0) {
            zzc();
        }
        if (str == null) {
            str = "";
        }
        long j10 = this.zze.zzc().getLong(this.zzb, 0L);
        if (j10 <= 0) {
            SharedPreferences.Editor editorEdit = this.zze.zzc().edit();
            editorEdit.putString(this.zzc, str);
            editorEdit.putLong(this.zzb, 1L);
            editorEdit.apply();
            return;
        }
        long j11 = j10 + 1;
        boolean z6 = (this.zze.zzq().zzv().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j11;
        SharedPreferences.Editor editorEdit2 = this.zze.zzc().edit();
        if (z6) {
            editorEdit2.putString(this.zzc, str);
        }
        editorEdit2.putLong(this.zzb, j11);
        editorEdit2.apply();
    }
}
