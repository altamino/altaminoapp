package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.VisibleForTesting;
import androidx.work.WorkRequest;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.measurement.zznp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes10.dex */
public final class zzhj extends zzfj {
    private final zzmp zza;
    private Boolean zzb;
    private String zzc;

    public zzhj(zzmp zzmpVar) {
        this(zzmpVar, null);
    }

    private final void zzd(zzbg zzbgVar, zzo zzoVar) {
        this.zza.zzr();
        this.zza.zza(zzbgVar, zzoVar);
    }

    @VisibleForTesting
    final zzbg zzb(zzbg zzbgVar, zzo zzoVar) {
        zzbb zzbbVar;
        if (com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE.equals(zzbgVar.zza) && (zzbbVar = zzbgVar.zzb) != null && zzbbVar.zza() != 0) {
            String strZzd = zzbgVar.zzb.zzd("_cis");
            if ("referrer broadcast".equals(strZzd) || "referrer API".equals(strZzd)) {
                this.zza.zzj().zzn().zza("Event has been filtered ", zzbgVar.toString());
                return new zzbg("_cmpx", zzbgVar.zzb, zzbgVar.zzc, zzbgVar.zzd);
            }
        }
        return zzbgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zzc(zzo zzoVar) {
        zzb(zzoVar, false);
        zza(new zzhk(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zzf(zzo zzoVar) {
        zzb(zzoVar, false);
        zza(new zzhl(this, zzoVar));
    }

    private zzhj(zzmp zzmpVar, String str) {
        Preconditions.checkNotNull(zzmpVar);
        this.zza = zzmpVar;
        this.zzc = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final zzam zza(zzo zzoVar) {
        zzb(zzoVar, false);
        Preconditions.checkNotEmpty(zzoVar.zza);
        if (!zznp.zza()) {
            return new zzam(null);
        }
        try {
            return (zzam) this.zza.zzl().zzb(new zzhu(this, zzoVar)).get(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zza.zzj().zzg().zza("Failed to get consent. appId", zzfr.zza(zzoVar.zza), e);
            return new zzam(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zze(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        Preconditions.checkNotNull(zzoVar.zzt);
        zzhv zzhvVar = new zzhv(this, zzoVar);
        Preconditions.checkNotNull(zzhvVar);
        if (this.zza.zzl().zzg()) {
            zzhvVar.run();
        } else {
            this.zza.zzl().zzc(zzhvVar);
        }
    }

    final void zzc(zzbg zzbgVar, zzo zzoVar) {
        if (!this.zza.zzi().zzl(zzoVar.zza)) {
            zzd(zzbgVar, zzoVar);
            return;
        }
        this.zza.zzj().zzp().zza("EES config found for", zzoVar.zza);
        zzgp zzgpVarZzi = this.zza.zzi();
        String str = zzoVar.zza;
        com.google.android.gms.internal.measurement.zzb zzbVar = TextUtils.isEmpty(str) ? null : zzgpVarZzi.zza.get(str);
        if (zzbVar == null) {
            this.zza.zzj().zzp().zza("EES not loaded for", zzoVar.zza);
            zzd(zzbgVar, zzoVar);
            return;
        }
        try {
            Map<String, Object> mapZza = this.zza.zzp().zza(zzbgVar.zzb.zzb(), true);
            String strZza = zzii.zza(zzbgVar.zza);
            if (strZza == null) {
                strZza = zzbgVar.zza;
            }
            if (zzbVar.zza(new com.google.android.gms.internal.measurement.zzad(strZza, zzbgVar.zzd, mapZza))) {
                if (zzbVar.zzd()) {
                    this.zza.zzj().zzp().zza("EES edited event", zzbgVar.zza);
                    zzd(this.zza.zzp().zza(zzbVar.zza().zzb()), zzoVar);
                } else {
                    zzd(zzbgVar, zzoVar);
                }
                if (zzbVar.zzc()) {
                    for (com.google.android.gms.internal.measurement.zzad zzadVar : zzbVar.zza().zzc()) {
                        this.zza.zzj().zzp().zza("EES logging created event", zzadVar.zzb());
                        zzd(this.zza.zzp().zza(zzadVar), zzoVar);
                    }
                    return;
                }
                return;
            }
        } catch (com.google.android.gms.internal.measurement.zzc unused) {
            this.zza.zzj().zzg().zza("EES error. appId, eventName", zzoVar.zzb, zzbgVar.zza);
        }
        this.zza.zzj().zzp().zza("EES was not applied to event", zzbgVar.zza);
        zzd(zzbgVar, zzoVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zzd(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        zza(zzoVar.zza, false);
        zza(new zzhs(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final String zzb(zzo zzoVar) {
        zzb(zzoVar, false);
        return this.zza.zzb(zzoVar);
    }

    @BinderThread
    private final void zzb(zzo zzoVar, boolean z6) {
        Preconditions.checkNotNull(zzoVar);
        Preconditions.checkNotEmpty(zzoVar.zza);
        zza(zzoVar.zza, false);
        this.zza.zzq().zza(zzoVar.zzb, zzoVar.zzp);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zzmh> zza(zzo zzoVar, Bundle bundle) {
        zzb(zzoVar, false);
        Preconditions.checkNotNull(zzoVar.zza);
        try {
            return (List) this.zza.zzl().zza(new zzib(this, zzoVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get trigger URIs. appId", zzfr.zza(zzoVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zznc> zza(zzo zzoVar, boolean z6) {
        zzb(zzoVar, false);
        String str = zzoVar.zza;
        Preconditions.checkNotNull(str);
        try {
            List<zzne> list = (List) this.zza.zzl().zza(new zzia(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzne zzneVar : list) {
                if (z6 || !zznd.zzg(zzneVar.zzc)) {
                    arrayList.add(new zznc(zzneVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzj().zzg().zza("Failed to get user properties. appId", zzfr.zza(zzoVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzj().zzg().zza("Failed to get user properties. appId", zzfr.zza(zzoVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zzad> zza(String str, String str2, zzo zzoVar) {
        zzb(zzoVar, false);
        String str3 = zzoVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            return (List) this.zza.zzl().zza(new zzhq(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zzad> zza(String str, String str2, String str3) {
        zza(str, true);
        try {
            return (List) this.zza.zzl().zza(new zzht(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zznc> zza(String str, String str2, boolean z6, zzo zzoVar) {
        zzb(zzoVar, false);
        String str3 = zzoVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            List<zzne> list = (List) this.zza.zzl().zza(new zzho(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzne zzneVar : list) {
                if (z6 || !zznd.zzg(zzneVar.zzc)) {
                    arrayList.add(new zznc(zzneVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzj().zzg().zza("Failed to query user properties. appId", zzfr.zza(zzoVar.zza), e);
            return Collections.emptyList();
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzj().zzg().zza("Failed to query user properties. appId", zzfr.zza(zzoVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final List<zznc> zza(String str, String str2, String str3, boolean z6) {
        zza(str, true);
        try {
            List<zzne> list = (List) this.zza.zzl().zza(new zzhr(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzne zzneVar : list) {
                if (z6 || !zznd.zzg(zzneVar.zzc)) {
                    arrayList.add(new zznc(zzneVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzj().zzg().zza("Failed to get user properties as. appId", zzfr.zza(str), e);
            return Collections.emptyList();
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzj().zzg().zza("Failed to get user properties as. appId", zzfr.zza(str), e);
            return Collections.emptyList();
        }
    }

    @BinderThread
    private final void zza(String str, boolean z6) {
        if (!TextUtils.isEmpty(str)) {
            if (z6) {
                try {
                    if (this.zzb == null) {
                        this.zzb = Boolean.valueOf("com.google.android.gms".equals(this.zzc) || UidVerifier.isGooglePlayServicesUid(this.zza.zza(), Binder.getCallingUid()) || GoogleSignatureVerifier.getInstance(this.zza.zza()).isUidGoogleSigned(Binder.getCallingUid()));
                    }
                    if (this.zzb.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.zza.zzj().zzg().zza("Measurement Service called with invalid calling package. appId", zzfr.zza(str));
                    throw e;
                }
            }
            if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zza(), Binder.getCallingUid(), str)) {
                this.zzc = str;
            }
            if (str.equals(this.zzc)) {
                return;
            } else {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
        }
        this.zza.zzj().zzg().zza("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    final /* synthetic */ void zza(String str, Bundle bundle) {
        this.zza.zzf().zza(str, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(zzbg zzbgVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzbgVar);
        zzb(zzoVar, false);
        zza(new zzhx(this, zzbgVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(zzbg zzbgVar, String str, String str2) {
        Preconditions.checkNotNull(zzbgVar);
        Preconditions.checkNotEmpty(str);
        zza(str, true);
        zza(new zzhw(this, zzbgVar, str));
    }

    @VisibleForTesting
    private final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzl().zzg()) {
            runnable.run();
        } else {
            this.zza.zzl().zzb(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(zzad zzadVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzadVar);
        Preconditions.checkNotNull(zzadVar.zzc);
        zzb(zzoVar, false);
        zzad zzadVar2 = new zzad(zzadVar);
        zzadVar2.zza = zzoVar.zza;
        zza(new zzhm(this, zzadVar2, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(zzad zzadVar) {
        Preconditions.checkNotNull(zzadVar);
        Preconditions.checkNotNull(zzadVar.zzc);
        Preconditions.checkNotEmpty(zzadVar.zza);
        zza(zzadVar.zza, true);
        zza(new zzhp(this, new zzad(zzadVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(long j6, String str, String str2, String str3) {
        zza(new zzhn(this, str2, str3, str, j6));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(final Bundle bundle, zzo zzoVar) {
        zzb(zzoVar, false);
        final String str = zzoVar.zza;
        Preconditions.checkNotNull(str);
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhi
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(str, bundle);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final void zza(zznc zzncVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzncVar);
        zzb(zzoVar, false);
        zza(new zzhy(this, zzncVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfk
    @BinderThread
    public final byte[] zza(zzbg zzbgVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbgVar);
        zza(str, true);
        this.zza.zzj().zzc().zza("Log and bundle. event", this.zza.zzg().zza(zzbgVar.zza));
        long jNanoTime = this.zza.zzb().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzl().zzb(new zzhz(this, zzbgVar, str)).get();
            if (bArr == null) {
                this.zza.zzj().zzg().zza("Log and bundle returned null. appId", zzfr.zza(str));
                bArr = new byte[0];
            }
            this.zza.zzj().zzc().zza("Log and bundle processed. event, size, time_ms", this.zza.zzg().zza(zzbgVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.zza.zzb().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            this.zza.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzfr.zza(str), this.zza.zzg().zza(zzbgVar.zza), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            this.zza.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzfr.zza(str), this.zza.zzg().zza(zzbgVar.zza), e);
            return null;
        }
    }
}
