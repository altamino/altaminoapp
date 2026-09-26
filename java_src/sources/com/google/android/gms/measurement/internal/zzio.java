package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
@VisibleForTesting
public final class zzio {
    final Context zza;

    @Nullable
    String zzb;

    @Nullable
    String zzc;

    @Nullable
    String zzd;

    @Nullable
    Boolean zze;
    long zzf;

    @Nullable
    com.google.android.gms.internal.measurement.zzdd zzg;
    boolean zzh;

    @Nullable
    Long zzi;

    @Nullable
    String zzj;

    @VisibleForTesting
    public zzio(Context context, @Nullable com.google.android.gms.internal.measurement.zzdd zzddVar, @Nullable Long l) {
        this.zzh = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        this.zzi = l;
        if (zzddVar != null) {
            this.zzg = zzddVar;
            this.zzb = zzddVar.zzf;
            this.zzc = zzddVar.zze;
            this.zzd = zzddVar.zzd;
            this.zzh = zzddVar.zzc;
            this.zzf = zzddVar.zzb;
            this.zzj = zzddVar.zzh;
            Bundle bundle = zzddVar.zzg;
            if (bundle != null) {
                this.zze = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
