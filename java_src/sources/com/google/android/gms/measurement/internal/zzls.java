package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public final class zzls extends zzmo {
    public final zzgi zza;
    public final zzgi zzb;
    public final zzgi zzc;
    public final zzgi zzd;
    public final zzgi zze;
    private final Map<String, zzlr> zzg;

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzmo
    protected final boolean zzc() {
        return false;
    }

    @WorkerThread
    @Deprecated
    private final Pair<String, Boolean> zza(String str) {
        zzlr zzlrVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzt();
        long jElapsedRealtime = zzb().elapsedRealtime();
        zzlr zzlrVar2 = this.zzg.get(str);
        if (zzlrVar2 != null && jElapsedRealtime < zzlrVar2.zzc) {
            return new Pair<>(zzlrVar2.zza, Boolean.valueOf(zzlrVar2.zzb));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzf = zze().zzf(str) + jElapsedRealtime;
        try {
            long jZzc = zze().zzc(str, zzbi.zzb);
            if (jZzc > 0) {
                try {
                    advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
                } catch (PackageManager.NameNotFoundException unused) {
                    if (zzlrVar2 != null && jElapsedRealtime < zzlrVar2.zzc + jZzc) {
                        return new Pair<>(zzlrVar2.zza, Boolean.valueOf(zzlrVar2.zzb));
                    }
                    advertisingIdInfo = null;
                }
            } else {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            }
            if (advertisingIdInfo == null) {
                return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String id = advertisingIdInfo.getId();
            zzlrVar = id != null ? new zzlr(id, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzf) : new zzlr("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzf);
            this.zzg.put(str, zzlrVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(zzlrVar.zza, Boolean.valueOf(zzlrVar.zzb));
        } catch (Exception e) {
            zzj().zzc().zza("Unable to get advertising id", e);
            zzlrVar = new zzlr("", false, jZzf);
        }
    }

    zzls(zzmp zzmpVar) {
        super(zzmpVar);
        this.zzg = new HashMap();
        zzgd zzgdVarZzk = zzk();
        zzgdVarZzk.getClass();
        this.zza = new zzgi(zzgdVarZzk, "last_delete_stale", 0L);
        zzgd zzgdVarZzk2 = zzk();
        zzgdVarZzk2.getClass();
        this.zzb = new zzgi(zzgdVarZzk2, "backoff", 0L);
        zzgd zzgdVarZzk3 = zzk();
        zzgdVarZzk3.getClass();
        this.zzc = new zzgi(zzgdVarZzk3, "last_upload", 0L);
        zzgd zzgdVarZzk4 = zzk();
        zzgdVarZzk4.getClass();
        this.zzd = new zzgi(zzgdVarZzk4, "last_upload_attempt", 0L);
        zzgd zzgdVarZzk5 = zzk();
        zzgdVarZzk5.getClass();
        this.zze = new zzgi(zzgdVarZzk5, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmz g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzao zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzgp zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzls zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmn zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @WorkerThread
    final Pair<String, Boolean> zza(String str, zzih zzihVar) {
        if (zzihVar.zzg()) {
            return zza(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    @WorkerThread
    @Deprecated
    final String zza(String str, boolean z6) {
        zzt();
        String str2 = z6 ? (String) zza(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest messageDigestZzu = zznd.zzu();
        if (messageDigestZzu == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzu.digest(str2.getBytes())));
    }
}
