package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzap extends zzf {
    private String zzcf;
    private String zzch;
    private String zzcn;
    private String zzcp;
    private long zzcs;
    private String zzcv;
    private int zzdq;
    private int zzjg;
    private String zzjh;
    private long zzji;
    private long zzu;

    zzap(zzby zzbyVar, long j) {
        super(zzbyVar);
        this.zzu = j;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzak() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:0|2|(1:4)(23:88|6|(1:10)(2:11|(1:13))|90|14|(4:16|(1:18)(1:20)|84|21)|26|(1:31)(1:30)|32|(1:37)(1:36)|38|(1:(1:41)(1:42))|(3:44|(2:46|(1:48))(1:(1:(1:59)(1:58))(2:52|(1:54)))|60)(1:60)|61|(1:65)|86|66|(1:68)(1:69)|70|(1:72)|(1:74)|78|(2:80|81)(2:82|83))|5|26|(2:28|31)(0)|32|(2:34|37)(0)|38|(0)|(0)(0)|61|(2:63|65)|86|66|(0)(0)|70|(0)|(0)|78|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01cf, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01d0, code lost:
    
        zzad().zzda().zza("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.measurement.internal.zzau.zzao(r0), r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01aa A[Catch: IllegalStateException -> 0x01cf, TryCatch #1 {IllegalStateException -> 0x01cf, blocks: (B:66:0x0196, B:70:0x01a2, B:72:0x01aa, B:74:0x01bd), top: B:86:0x0196 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01bd A[Catch: IllegalStateException -> 0x01cf, TRY_LEAVE, TryCatch #1 {IllegalStateException -> 0x01cf, blocks: (B:66:0x0196, B:70:0x01a2, B:72:0x01aa, B:74:0x01bd), top: B:86:0x0196 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f2  */
    @Override // com.google.android.gms.measurement.internal.zzf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzal() throws java.lang.IllegalStateException, android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzap.zzal():void");
    }

    final zzm zzak(String str) throws IllegalStateException {
        Boolean boolZzj;
        zzq();
        zzo();
        String strZzan = zzan();
        String gmpAppId = getGmpAppId();
        zzah();
        String str2 = this.zzcn;
        long jZzcx = zzcx();
        zzah();
        String str3 = this.zzcp;
        long jZzav = zzaf().zzav();
        zzah();
        zzq();
        if (this.zzji == 0) {
            this.zzji = this.zzl.zzab().zzc(getContext(), getContext().getPackageName());
        }
        long j = this.zzji;
        boolean zIsEnabled = this.zzl.isEnabled();
        boolean z = !zzae().zzlu;
        zzq();
        zzo();
        String strZzcw = (!zzaf().zzr(this.zzcf) || this.zzl.isEnabled()) ? zzcw() : null;
        zzah();
        long j2 = this.zzcs;
        long jZzer = this.zzl.zzer();
        int iZzcy = zzcy();
        zzt zztVarZzaf = zzaf();
        zztVarZzaf.zzo();
        Boolean boolZzj2 = zztVarZzaf.zzj("google_analytics_adid_collection_enabled");
        boolean zBooleanValue = Boolean.valueOf(boolZzj2 == null || boolZzj2.booleanValue()).booleanValue();
        zzt zztVarZzaf2 = zzaf();
        zztVarZzaf2.zzo();
        Boolean boolZzj3 = zztVarZzaf2.zzj("google_analytics_ssaid_collection_enabled");
        return new zzm(strZzan, gmpAppId, str2, jZzcx, str3, jZzav, j, str, zIsEnabled, z, strZzcw, j2, jZzer, iZzcy, zBooleanValue, Boolean.valueOf(boolZzj3 == null || boolZzj3.booleanValue()).booleanValue(), zzae().zzdy(), zzao(), (!zzaf().zze(zzan(), zzal.zzin) || (boolZzj = zzaf().zzj("google_analytics_default_allow_ad_personalization_signals")) == null) ? null : Boolean.valueOf(!boolZzj.booleanValue()), this.zzu);
    }

    @VisibleForTesting
    private final String zzcw() throws IllegalStateException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> clsLoadClass = getContext().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (clsLoadClass == null) {
                return null;
            }
            try {
                Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, getContext());
                if (objInvoke == null) {
                    return null;
                }
                try {
                    return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                } catch (Exception unused) {
                    zzad().zzdf().zzaq("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                zzad().zzde().zzaq("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
    }

    final String zzan() {
        zzah();
        return this.zzcf;
    }

    final String getGmpAppId() {
        zzah();
        return this.zzch;
    }

    final String zzao() {
        zzah();
        return this.zzcv;
    }

    final int zzcx() {
        zzah();
        return this.zzjg;
    }

    final int zzcy() {
        zzah();
        return this.zzdq;
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdd zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzap zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeg zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzed zzv() {
        return super.zzv();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaq zzw() {
        return super.zzw();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzfj zzx() {
        return super.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
