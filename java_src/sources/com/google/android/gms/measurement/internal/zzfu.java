package com.google.android.gms.measurement.internal;

import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes10.dex */
final class zzfu implements Runnable {
    private final /* synthetic */ int zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Object zzc;
    private final /* synthetic */ Object zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzfr zzf;

    zzfu(zzfr zzfrVar, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzfrVar;
        this.zza = i10;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgd zzgdVarZzn = this.zzf.zzu.zzn();
        if (!zzgdVarZzn.zzae()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzf.zza == 0) {
            if (this.zzf.zze().zzx()) {
                this.zzf.zza = 'C';
            } else {
                this.zzf.zza = 'c';
            }
        }
        if (this.zzf.zzb < 0) {
            this.zzf.zzb = 82001L;
        }
        String strSubstring = ExifInterface.GPS_MEASUREMENT_2D + "01VDIWEA?".charAt(this.zza) + this.zzf.zza + this.zzf.zzb + ":" + zzfr.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        if (strSubstring.length() > 1024) {
            strSubstring = this.zzb.substring(0, 1024);
        }
        zzgh zzghVar = zzgdVarZzn.zzb;
        if (zzghVar != null) {
            zzghVar.zza(strSubstring, 1L);
        }
    }
}
