package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class zzh {
    private final zzhf zza;
    private long zzaa;
    private long zzab;
    private long zzac;
    private long zzad;
    private long zzae;
    private long zzaf;
    private long zzag;

    @Nullable
    private String zzah;
    private boolean zzai;
    private long zzaj;
    private long zzak;
    private final String zzb;

    @Nullable
    private String zzc;

    @Nullable
    private String zzd;

    @Nullable
    private String zze;

    @Nullable
    private String zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    @Nullable
    private String zzj;
    private long zzk;

    @Nullable
    private String zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private boolean zzp;

    @Nullable
    private String zzq;

    @Nullable
    private Boolean zzr;
    private long zzs;

    @Nullable
    private List<String> zzt;

    @Nullable
    private String zzu;
    private boolean zzv;
    private long zzw;
    private long zzx;
    private int zzy;
    private boolean zzz;

    @WorkerThread
    public final int zza() {
        this.zza.zzl().zzt();
        return this.zzy;
    }

    @WorkerThread
    public final long zzb() {
        this.zza.zzl().zzt();
        return 0L;
    }

    @WorkerThread
    public final long zzc() {
        this.zza.zzl().zzt();
        return this.zzk;
    }

    @WorkerThread
    public final long zzd() {
        this.zza.zzl().zzt();
        return this.zzaa;
    }

    @WorkerThread
    public final long zze() {
        this.zza.zzl().zzt();
        return this.zzaj;
    }

    @WorkerThread
    public final long zzf() {
        this.zza.zzl().zzt();
        return this.zzae;
    }

    @WorkerThread
    public final long zzg() {
        this.zza.zzl().zzt();
        return this.zzaf;
    }

    @WorkerThread
    public final long zzh() {
        this.zza.zzl().zzt();
        return this.zzad;
    }

    @WorkerThread
    public final long zzi() {
        this.zza.zzl().zzt();
        return this.zzac;
    }

    @WorkerThread
    public final long zzj() {
        this.zza.zzl().zzt();
        return this.zzag;
    }

    @WorkerThread
    public final long zzk() {
        this.zza.zzl().zzt();
        return this.zzab;
    }

    @WorkerThread
    public final long zzl() {
        this.zza.zzl().zzt();
        return this.zzn;
    }

    @WorkerThread
    public final long zzm() {
        this.zza.zzl().zzt();
        return this.zzs;
    }

    @WorkerThread
    public final long zzn() {
        this.zza.zzl().zzt();
        return this.zzak;
    }

    @WorkerThread
    public final long zzo() {
        this.zza.zzl().zzt();
        return this.zzm;
    }

    @WorkerThread
    public final long zzp() {
        this.zza.zzl().zzt();
        return this.zzi;
    }

    @WorkerThread
    public final long zzq() {
        this.zza.zzl().zzt();
        return this.zzg;
    }

    @WorkerThread
    public final long zzr() {
        this.zza.zzl().zzt();
        return this.zzh;
    }

    @WorkerThread
    public final void zza(@Nullable String str) {
        this.zza.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzai |= !zzg.zza(this.zzq, str);
        this.zzq = str;
    }

    @Nullable
    @WorkerThread
    public final String zzaa() {
        this.zza.zzl().zzt();
        return this.zzj;
    }

    @Nullable
    @WorkerThread
    public final String zzab() {
        this.zza.zzl().zzt();
        return this.zzf;
    }

    @Nullable
    @WorkerThread
    public final String zzac() {
        this.zza.zzl().zzt();
        return this.zzd;
    }

    @Nullable
    @WorkerThread
    public final String zzad() {
        this.zza.zzl().zzt();
        return this.zzah;
    }

    @Nullable
    @WorkerThread
    public final String zzae() {
        this.zza.zzl().zzt();
        return this.zze;
    }

    @Nullable
    @WorkerThread
    public final String zzaf() {
        this.zza.zzl().zzt();
        return this.zzu;
    }

    @Nullable
    @WorkerThread
    public final List<String> zzag() {
        this.zza.zzl().zzt();
        return this.zzt;
    }

    @WorkerThread
    public final void zzah() {
        this.zza.zzl().zzt();
        this.zzai = false;
    }

    @WorkerThread
    public final void zzai() {
        this.zza.zzl().zzt();
        long j6 = this.zzg + 1;
        if (j6 > 2147483647L) {
            this.zza.zzj().zzu().zza("Bundle index overflow. appId", zzfr.zza(this.zzb));
            j6 = 0;
        }
        this.zzai = true;
        this.zzg = j6;
    }

    @WorkerThread
    public final boolean zzaj() {
        this.zza.zzl().zzt();
        return this.zzp;
    }

    @WorkerThread
    public final boolean zzak() {
        this.zza.zzl().zzt();
        return this.zzo;
    }

    @WorkerThread
    public final boolean zzal() {
        this.zza.zzl().zzt();
        return this.zzai;
    }

    @WorkerThread
    public final boolean zzam() {
        this.zza.zzl().zzt();
        return this.zzv;
    }

    @WorkerThread
    public final boolean zzan() {
        this.zza.zzl().zzt();
        return this.zzz;
    }

    @WorkerThread
    public final void zzb(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzc, str);
        this.zzc = str;
    }

    @WorkerThread
    public final void zzc(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzl, str);
        this.zzl = str;
    }

    @WorkerThread
    public final void zzd(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzj, str);
        this.zzj = str;
    }

    @WorkerThread
    public final void zze(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzaf != j6;
        this.zzaf = j6;
    }

    @WorkerThread
    public final void zzf(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzad != j6;
        this.zzad = j6;
    }

    @WorkerThread
    public final void zzg(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzac != j6;
        this.zzac = j6;
    }

    @WorkerThread
    public final void zzh(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzag != j6;
        this.zzag = j6;
    }

    @WorkerThread
    public final void zzi(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzab != j6;
        this.zzab = j6;
    }

    @WorkerThread
    public final void zzj(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzn != j6;
        this.zzn = j6;
    }

    @WorkerThread
    public final void zzk(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzs != j6;
        this.zzs = j6;
    }

    @WorkerThread
    public final void zzl(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzak != j6;
        this.zzak = j6;
    }

    @WorkerThread
    public final void zzm(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzm != j6;
        this.zzm = j6;
    }

    @WorkerThread
    public final void zzn(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzi != j6;
        this.zzi = j6;
    }

    @WorkerThread
    public final void zzo(long j6) {
        Preconditions.checkArgument(j6 >= 0);
        this.zza.zzl().zzt();
        this.zzai |= this.zzg != j6;
        this.zzg = j6;
    }

    @WorkerThread
    public final void zzp(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzh != j6;
        this.zzh = j6;
    }

    @WorkerThread
    public final void zzq(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzx != j6;
        this.zzx = j6;
    }

    @WorkerThread
    public final void zzr(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzw != j6;
        this.zzw = j6;
    }

    @WorkerThread
    public final long zzs() {
        this.zza.zzl().zzt();
        return this.zzx;
    }

    @WorkerThread
    public final long zzt() {
        this.zza.zzl().zzt();
        return this.zzw;
    }

    @Nullable
    @WorkerThread
    public final Boolean zzu() {
        this.zza.zzl().zzt();
        return this.zzr;
    }

    @Nullable
    @WorkerThread
    public final String zzv() {
        this.zza.zzl().zzt();
        return this.zzq;
    }

    @Nullable
    @WorkerThread
    public final String zzw() {
        this.zza.zzl().zzt();
        String str = this.zzah;
        zzg((String) null);
        return str;
    }

    @WorkerThread
    public final String zzx() {
        this.zza.zzl().zzt();
        return this.zzb;
    }

    @Nullable
    @WorkerThread
    public final String zzy() {
        this.zza.zzl().zzt();
        return this.zzc;
    }

    @Nullable
    @WorkerThread
    public final String zzz() {
        this.zza.zzl().zzt();
        return this.zzl;
    }

    @WorkerThread
    zzh(zzhf zzhfVar, String str) {
        Preconditions.checkNotNull(zzhfVar);
        Preconditions.checkNotEmpty(str);
        this.zza = zzhfVar;
        this.zzb = str;
        zzhfVar.zzl().zzt();
    }

    @WorkerThread
    public final void zze(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzf, str);
        this.zzf = str;
    }

    @WorkerThread
    public final void zzf(@Nullable String str) {
        this.zza.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzai |= !zzg.zza(this.zzd, str);
        this.zzd = str;
    }

    @WorkerThread
    public final void zzg(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzah, str);
        this.zzah = str;
    }

    @WorkerThread
    public final void zzh(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zze, str);
        this.zze = str;
    }

    @WorkerThread
    public final void zzi(@Nullable String str) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzu, str);
        this.zzu = str;
    }

    @WorkerThread
    public final void zzb(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzaa != j6;
        this.zzaa = j6;
    }

    @WorkerThread
    public final void zzc(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzaj != j6;
        this.zzaj = j6;
    }

    @WorkerThread
    public final void zzd(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzae != j6;
        this.zzae = j6;
    }

    @WorkerThread
    public final void zza(int i10) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzy != i10;
        this.zzy = i10;
    }

    @WorkerThread
    public final void zzb(boolean z6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzo != z6;
        this.zzo = z6;
    }

    @WorkerThread
    public final void zzc(boolean z6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzv != z6;
        this.zzv = z6;
    }

    @WorkerThread
    public final void zzd(boolean z6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzz != z6;
        this.zzz = z6;
    }

    @WorkerThread
    public final void zza(boolean z6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzp != z6;
        this.zzp = z6;
    }

    @WorkerThread
    public final void zza(long j6) {
        this.zza.zzl().zzt();
        this.zzai |= this.zzk != j6;
        this.zzk = j6;
    }

    @WorkerThread
    public final void zza(@Nullable Boolean bool) {
        this.zza.zzl().zzt();
        this.zzai |= !zzg.zza(this.zzr, bool);
        this.zzr = bool;
    }

    @WorkerThread
    public final void zza(@Nullable List<String> list) {
        this.zza.zzl().zzt();
        if (zzg.zza(this.zzt, list)) {
            return;
        }
        this.zzai = true;
        this.zzt = list != null ? new ArrayList(list) : null;
    }
}
