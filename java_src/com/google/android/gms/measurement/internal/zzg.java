package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzg {
    private final String zzcf;
    private String zzcg;
    private String zzch;
    private String zzci;
    private String zzcj;
    private long zzck;
    private long zzcl;
    private long zzcm;
    private String zzcn;
    private long zzco;
    private String zzcp;
    private long zzcq;
    private boolean zzcr;
    private long zzcs;
    private boolean zzct;
    private boolean zzcu;
    private String zzcv;
    private Boolean zzcw;
    private long zzcx;
    private long zzcy;
    private long zzcz;
    private long zzda;
    private long zzdb;
    private long zzdc;
    private String zzdd;
    private boolean zzde;
    private long zzdf;
    private long zzdg;
    private final zzby zzl;
    private long zzt;
    private long zzu;

    zzg(zzby zzbyVar, String str) {
        Preconditions.checkNotNull(zzbyVar);
        Preconditions.checkNotEmpty(str);
        this.zzl = zzbyVar;
        this.zzcf = str;
        this.zzl.zzac().zzq();
    }

    public final void zzam() {
        this.zzl.zzac().zzq();
        this.zzde = false;
    }

    public final String zzan() {
        this.zzl.zzac().zzq();
        return this.zzcf;
    }

    public final String getAppInstanceId() {
        this.zzl.zzac().zzq();
        return this.zzcg;
    }

    public final void zza(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzcg, str);
        this.zzcg = str;
    }

    public final String getGmpAppId() {
        this.zzl.zzac().zzq();
        return this.zzch;
    }

    public final void zzb(String str) {
        this.zzl.zzac().zzq();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzde |= !zzgd.zzs(this.zzch, str);
        this.zzch = str;
    }

    public final String zzao() {
        this.zzl.zzac().zzq();
        return this.zzcv;
    }

    public final void zzc(String str) {
        this.zzl.zzac().zzq();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzde |= !zzgd.zzs(this.zzcv, str);
        this.zzcv = str;
    }

    public final String zzap() {
        this.zzl.zzac().zzq();
        return this.zzci;
    }

    public final void zzd(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzci, str);
        this.zzci = str;
    }

    public final String getFirebaseInstanceId() {
        this.zzl.zzac().zzq();
        return this.zzcj;
    }

    public final void zze(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzcj, str);
        this.zzcj = str;
    }

    public final long zzaq() {
        this.zzl.zzac().zzq();
        return this.zzcl;
    }

    public final void zze(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcl != j;
        this.zzcl = j;
    }

    public final long zzar() {
        this.zzl.zzac().zzq();
        return this.zzcm;
    }

    public final void zzf(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcm != j;
        this.zzcm = j;
    }

    public final String zzas() {
        this.zzl.zzac().zzq();
        return this.zzcn;
    }

    public final void zzf(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzcn, str);
        this.zzcn = str;
    }

    public final long zzat() {
        this.zzl.zzac().zzq();
        return this.zzco;
    }

    public final void zzg(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzco != j;
        this.zzco = j;
    }

    public final String zzau() {
        this.zzl.zzac().zzq();
        return this.zzcp;
    }

    public final void zzg(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzcp, str);
        this.zzcp = str;
    }

    public final long zzav() {
        this.zzl.zzac().zzq();
        return this.zzt;
    }

    public final void zzh(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzt != j;
        this.zzt = j;
    }

    public final long zzaw() {
        this.zzl.zzac().zzq();
        return this.zzcq;
    }

    public final void zzi(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcq != j;
        this.zzcq = j;
    }

    public final long zzax() {
        this.zzl.zzac().zzq();
        return this.zzu;
    }

    public final void zzj(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzu != j;
        this.zzu = j;
    }

    public final boolean isMeasurementEnabled() {
        this.zzl.zzac().zzq();
        return this.zzcr;
    }

    public final void setMeasurementEnabled(boolean z) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcr != z;
        this.zzcr = z;
    }

    public final void zzk(long j) {
        Preconditions.checkArgument(j >= 0);
        this.zzl.zzac().zzq();
        this.zzde = (this.zzck != j) | this.zzde;
        this.zzck = j;
    }

    public final long zzay() {
        this.zzl.zzac().zzq();
        return this.zzck;
    }

    public final long zzaz() {
        this.zzl.zzac().zzq();
        return this.zzdf;
    }

    public final void zzl(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzdf != j;
        this.zzdf = j;
    }

    public final long zzba() {
        this.zzl.zzac().zzq();
        return this.zzdg;
    }

    public final void zzm(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzdg != j;
        this.zzdg = j;
    }

    public final void zzbb() throws IllegalStateException {
        this.zzl.zzac().zzq();
        long j = this.zzck + 1;
        if (j > 2147483647L) {
            this.zzl.zzad().zzdd().zza("Bundle index overflow. appId", zzau.zzao(this.zzcf));
            j = 0;
        }
        this.zzde = true;
        this.zzck = j;
    }

    public final long zzbc() {
        this.zzl.zzac().zzq();
        return this.zzcx;
    }

    public final void zzn(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcx != j;
        this.zzcx = j;
    }

    public final long zzbd() {
        this.zzl.zzac().zzq();
        return this.zzcy;
    }

    public final void zzo(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcy != j;
        this.zzcy = j;
    }

    public final long zzbe() {
        this.zzl.zzac().zzq();
        return this.zzcz;
    }

    public final void zzp(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcz != j;
        this.zzcz = j;
    }

    public final long zzbf() {
        this.zzl.zzac().zzq();
        return this.zzda;
    }

    public final void zzq(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzda != j;
        this.zzda = j;
    }

    public final long zzbg() {
        this.zzl.zzac().zzq();
        return this.zzdc;
    }

    public final void zzr(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzdc != j;
        this.zzdc = j;
    }

    public final long zzbh() {
        this.zzl.zzac().zzq();
        return this.zzdb;
    }

    public final void zzs(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzdb != j;
        this.zzdb = j;
    }

    public final String zzbi() {
        this.zzl.zzac().zzq();
        return this.zzdd;
    }

    public final String zzbj() {
        this.zzl.zzac().zzq();
        String str = this.zzdd;
        zzh((String) null);
        return str;
    }

    public final void zzh(String str) {
        this.zzl.zzac().zzq();
        this.zzde |= !zzgd.zzs(this.zzdd, str);
        this.zzdd = str;
    }

    public final long zzbk() {
        this.zzl.zzac().zzq();
        return this.zzcs;
    }

    public final void zzt(long j) {
        this.zzl.zzac().zzq();
        this.zzde |= this.zzcs != j;
        this.zzcs = j;
    }

    public final boolean zzbl() {
        this.zzl.zzac().zzq();
        return this.zzct;
    }

    public final void zzb(boolean z) {
        this.zzl.zzac().zzq();
        this.zzde = this.zzct != z;
        this.zzct = z;
    }

    public final boolean zzbm() {
        this.zzl.zzac().zzq();
        return this.zzcu;
    }

    public final void zzc(boolean z) {
        this.zzl.zzac().zzq();
        this.zzde = this.zzcu != z;
        this.zzcu = z;
    }

    public final Boolean zzbn() {
        this.zzl.zzac().zzq();
        return this.zzcw;
    }

    public final void zza(Boolean bool) {
        this.zzl.zzac().zzq();
        this.zzde = !zzgd.zza(this.zzcw, bool);
        this.zzcw = bool;
    }
}
