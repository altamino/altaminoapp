package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zznp;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zzoi;
import com.google.android.gms.internal.measurement.zzpg;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class zzhf implements zzif {
    private static volatile zzhf zzb;

    @VisibleForTesting
    final long zza;
    private Boolean zzaa;
    private long zzab;
    private volatile Boolean zzac;

    @VisibleForTesting
    private Boolean zzad;

    @VisibleForTesting
    private Boolean zzae;
    private volatile boolean zzaf;
    private int zzag;
    private int zzah;
    private final Context zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final boolean zzg;
    private final zzae zzh;
    private final zzaf zzi;
    private final zzgd zzj;
    private final zzfr zzk;
    private final zzgy zzl;
    private final zzlx zzm;
    private final zznd zzn;
    private final zzfq zzo;
    private final Clock zzp;
    private final zzkh zzq;
    private final zziq zzr;
    private final zzb zzs;
    private final zzkc zzt;
    private final String zzu;
    private zzfo zzv;
    private zzkp zzw;
    private zzba zzx;
    private zzfl zzy;
    private boolean zzz = false;
    private AtomicInteger zzai = new AtomicInteger(0);

    @Override // com.google.android.gms.measurement.internal.zzif
    public final Context zza() {
        return this.zzc;
    }

    final void zzaa() {
        this.zzag++;
    }

    public final boolean zzag() {
        return this.zzg;
    }

    @Override // com.google.android.gms.measurement.internal.zzif
    public final Clock zzb() {
        return this.zzp;
    }

    @Override // com.google.android.gms.measurement.internal.zzif
    public final zzae zzd() {
        return this.zzh;
    }

    public final zzaf zzf() {
        return this.zzi;
    }

    public final zzfq zzk() {
        return this.zzo;
    }

    final zzgy zzo() {
        return this.zzl;
    }

    public final String zzu() {
        return this.zzd;
    }

    public final String zzv() {
        return this.zze;
    }

    public final String zzw() {
        return this.zzf;
    }

    public final String zzx() {
        return this.zzu;
    }

    public static zzhf zza(Context context, com.google.android.gms.internal.measurement.zzdd zzddVar, Long l) {
        Bundle bundle;
        if (zzddVar != null && (zzddVar.zze == null || zzddVar.zzf == null)) {
            zzddVar = new com.google.android.gms.internal.measurement.zzdd(zzddVar.zza, zzddVar.zzb, zzddVar.zzc, zzddVar.zzd, null, null, zzddVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzhf.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzhf(new zzio(context, zzddVar, l));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (zzddVar != null && (bundle = zzddVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzb);
            zzb.zza(zzddVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzb);
        return zzb;
    }

    private final zzkc zzai() {
        zza((zzic) this.zzt);
        return this.zzt;
    }

    @WorkerThread
    public final boolean zzab() {
        return this.zzac != null && this.zzac.booleanValue();
    }

    public final boolean zzae() {
        return TextUtils.isEmpty(this.zzd);
    }

    @WorkerThread
    protected final boolean zzaf() {
        if (!this.zzz) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzl().zzt();
        Boolean bool = this.zzaa;
        if (bool == null || this.zzab == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.zzp.elapsedRealtime() - this.zzab) > 1000)) {
            this.zzab = this.zzp.elapsedRealtime();
            boolean z6 = true;
            Boolean boolValueOf = Boolean.valueOf(zzt().zze("android.permission.INTERNET") && zzt().zze("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzc).isCallerInstantApp() || this.zzi.zzw() || (zznd.zza(this.zzc) && zznd.zza(this.zzc, false))));
            this.zzaa = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!zzt().zza(zzh().zzae(), zzh().zzac()) && TextUtils.isEmpty(zzh().zzac())) {
                    z6 = false;
                }
                this.zzaa = Boolean.valueOf(z6);
            }
        }
        return this.zzaa.booleanValue();
    }

    @WorkerThread
    public final void zzb(boolean z6) {
        zzl().zzt();
        this.zzaf = z6;
    }

    public final zzb zze() {
        zzb zzbVar = this.zzs;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final zzba zzg() {
        zza((zzic) this.zzx);
        return this.zzx;
    }

    public final zzfl zzh() {
        zza((zze) this.zzy);
        return this.zzy;
    }

    public final zzfo zzi() {
        zza((zze) this.zzv);
        return this.zzv;
    }

    @Override // com.google.android.gms.measurement.internal.zzif
    public final zzfr zzj() {
        zza((zzic) this.zzk);
        return this.zzk;
    }

    @Override // com.google.android.gms.measurement.internal.zzif
    public final zzgy zzl() {
        zza((zzic) this.zzl);
        return this.zzl;
    }

    public final zzfr zzm() {
        zzfr zzfrVar = this.zzk;
        if (zzfrVar == null || !zzfrVar.zzae()) {
            return null;
        }
        return this.zzk;
    }

    public final zzgd zzn() {
        zza((zzid) this.zzj);
        return this.zzj;
    }

    public final zziq zzp() {
        zza((zze) this.zzr);
        return this.zzr;
    }

    public final zzkh zzq() {
        zza((zze) this.zzq);
        return this.zzq;
    }

    public final zzkp zzr() {
        zza((zze) this.zzw);
        return this.zzw;
    }

    public final zzlx zzs() {
        zza((zze) this.zzm);
        return this.zzm;
    }

    public final zznd zzt() {
        zza((zzid) this.zzn);
        return this.zzn;
    }

    final void zzy() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void zzz() {
        this.zzai.incrementAndGet();
    }

    private zzhf(zzio zzioVar) {
        long jCurrentTimeMillis;
        Bundle bundle;
        boolean z6 = false;
        Preconditions.checkNotNull(zzioVar);
        zzae zzaeVar = new zzae(zzioVar.zza);
        this.zzh = zzaeVar;
        zzff.zza = zzaeVar;
        Context context = zzioVar.zza;
        this.zzc = context;
        this.zzd = zzioVar.zzb;
        this.zze = zzioVar.zzc;
        this.zzf = zzioVar.zzd;
        this.zzg = zzioVar.zzh;
        this.zzac = zzioVar.zze;
        this.zzu = zzioVar.zzj;
        this.zzaf = true;
        com.google.android.gms.internal.measurement.zzdd zzddVar = zzioVar.zzg;
        if (zzddVar != null && (bundle = zzddVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzad = (Boolean) obj;
            }
            Object obj2 = zzddVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzae = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzgn.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzp = defaultClock;
        Long l = zzioVar.zzi;
        if (l != null) {
            jCurrentTimeMillis = l.longValue();
        } else {
            jCurrentTimeMillis = defaultClock.currentTimeMillis();
        }
        this.zza = jCurrentTimeMillis;
        this.zzi = new zzaf(this);
        zzgd zzgdVar = new zzgd(this);
        zzgdVar.zzac();
        this.zzj = zzgdVar;
        zzfr zzfrVar = new zzfr(this);
        zzfrVar.zzac();
        this.zzk = zzfrVar;
        zznd zzndVar = new zznd(this);
        zzndVar.zzac();
        this.zzn = zzndVar;
        this.zzo = new zzfq(new zzin(zzioVar, this));
        this.zzs = new zzb(this);
        zzkh zzkhVar = new zzkh(this);
        zzkhVar.zzv();
        this.zzq = zzkhVar;
        zziq zziqVar = new zziq(this);
        zziqVar.zzv();
        this.zzr = zziqVar;
        zzlx zzlxVar = new zzlx(this);
        zzlxVar.zzv();
        this.zzm = zzlxVar;
        zzkc zzkcVar = new zzkc(this);
        zzkcVar.zzac();
        this.zzt = zzkcVar;
        zzgy zzgyVar = new zzgy(this);
        zzgyVar.zzac();
        this.zzl = zzgyVar;
        com.google.android.gms.internal.measurement.zzdd zzddVar2 = zzioVar.zzg;
        if (zzddVar2 != null && zzddVar2.zzb != 0) {
            z6 = true;
        }
        boolean z10 = !z6;
        if (context.getApplicationContext() instanceof Application) {
            zziq zziqVarZzp = zzp();
            if (zziqVarZzp.zza().getApplicationContext() instanceof Application) {
                Application application = (Application) zziqVarZzp.zza().getApplicationContext();
                if (zziqVarZzp.zza == null) {
                    zziqVarZzp.zza = new zzjx(zziqVarZzp);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(zziqVarZzp.zza);
                    application.registerActivityLifecycleCallbacks(zziqVarZzp.zza);
                    zziqVarZzp.zzj().zzp().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzj().zzu().zza("Application context is not an Application");
        }
        zzgyVar.zzb(new zzhg(this, zzioVar));
    }

    @WorkerThread
    public final boolean zzac() {
        if (zzc() == 0) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzad() {
        zzl().zzt();
        return this.zzaf;
    }

    @WorkerThread
    public final boolean zzah() {
        Bundle bundle;
        int i10;
        String str;
        zzl().zzt();
        zza((zzic) zzai());
        String strZzad = zzh().zzad();
        Pair<String, Boolean> pairZza = zzn().zza(strZzad);
        boolean z6 = false;
        if (this.zzi.zzp() && !((Boolean) pairZza.second).booleanValue() && !TextUtils.isEmpty((CharSequence) pairZza.first)) {
            if (!zzai().zzc()) {
                zzj().zzu().zza("Network is not available for Deferred Deep Link request. Skipping");
                return false;
            }
            StringBuilder sb = new StringBuilder();
            if (zznp.zza() && this.zzi.zza(zzbi.zzcn)) {
                zziq zziqVarZzp = zzp();
                zziqVarZzp.zzt();
                zzam zzamVarZzaa = zziqVarZzp.zzo().zzaa();
                if (zzamVarZzaa != null) {
                    bundle = zzamVarZzaa.zza;
                } else {
                    bundle = null;
                }
                int i11 = 1;
                if (bundle == null) {
                    int i12 = this.zzah;
                    this.zzah = i12 + 1;
                    if (i12 < 10) {
                        z6 = true;
                    }
                    zzft zzftVarZzc = zzj().zzc();
                    if (z6) {
                        str = "Retrying.";
                    } else {
                        str = "Skipping.";
                    }
                    zzftVarZzc.zza("Failed to retrieve DMA consent from the service, " + str + " retryCount", Integer.valueOf(this.zzah));
                    return z6;
                }
                zzih zzihVarZza = zzih.zza(bundle, 100);
                sb.append("&gcs=");
                sb.append(zzihVarZza.zzf());
                zzay zzayVarZza = zzay.zza(bundle, 100);
                sb.append("&dma=");
                if (zzayVarZza.zzd() == Boolean.FALSE) {
                    i10 = 0;
                } else {
                    i10 = 1;
                }
                sb.append(i10);
                if (!TextUtils.isEmpty(zzayVarZza.zze())) {
                    sb.append("&dma_cps=");
                    sb.append(zzayVarZza.zze());
                }
                if (zzay.zza(bundle) == Boolean.TRUE) {
                    i11 = 0;
                }
                sb.append("&npa=");
                sb.append(i11);
                zzj().zzp().zza("Consent query parameters to Bow", sb);
            }
            zznd zzndVarZzt = zzt();
            zzh();
            URL urlZza = zzndVarZzt.zza(82001L, strZzad, (String) pairZza.first, zzn().zzp.zza() - 1, sb.toString());
            if (urlZza != null) {
                zzkc zzkcVarZzai = zzai();
                zzkb zzkbVar = new zzkb() { // from class: com.google.android.gms.measurement.internal.zzhh
                    @Override // com.google.android.gms.measurement.internal.zzkb
                    public final void zza(String str2, int i13, Throwable th, byte[] bArr, Map map) {
                        this.zza.zza(str2, i13, th, bArr, map);
                    }
                };
                zzkcVarZzai.zzt();
                zzkcVarZzai.zzab();
                Preconditions.checkNotNull(urlZza);
                Preconditions.checkNotNull(zzkbVar);
                zzkcVarZzai.zzl().zza(new zzke(zzkcVarZzai, strZzad, urlZza, null, null, zzkbVar));
            }
            return false;
        }
        zzj().zzc().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        return false;
    }

    @WorkerThread
    public final int zzc() {
        zzl().zzt();
        if (this.zzi.zzv()) {
            return 1;
        }
        Boolean bool = this.zzae;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!zzad()) {
            return 8;
        }
        Boolean boolZzu = zzn().zzu();
        if (boolZzu != null) {
            if (boolZzu.booleanValue()) {
                return 0;
            }
            return 3;
        }
        Boolean boolZzg = this.zzi.zzg("firebase_analytics_collection_enabled");
        if (boolZzg != null) {
            if (boolZzg.booleanValue()) {
                return 0;
            }
            return 4;
        }
        Boolean bool2 = this.zzad;
        if (bool2 != null) {
            if (bool2.booleanValue()) {
                return 0;
            }
            return 5;
        }
        if (this.zzac == null || this.zzac.booleanValue()) {
            return 0;
        }
        return 7;
    }

    static /* synthetic */ void zza(zzhf zzhfVar, zzio zzioVar) {
        zzhfVar.zzl().zzt();
        zzba zzbaVar = new zzba(zzhfVar);
        zzbaVar.zzac();
        zzhfVar.zzx = zzbaVar;
        zzfl zzflVar = new zzfl(zzhfVar, zzioVar.zzf);
        zzflVar.zzv();
        zzhfVar.zzy = zzflVar;
        zzfo zzfoVar = new zzfo(zzhfVar);
        zzfoVar.zzv();
        zzhfVar.zzv = zzfoVar;
        zzkp zzkpVar = new zzkp(zzhfVar);
        zzkpVar.zzv();
        zzhfVar.zzw = zzkpVar;
        zzhfVar.zzn.zzad();
        zzhfVar.zzj.zzad();
        zzhfVar.zzy.zzw();
        zzhfVar.zzj().zzn().zza("App measurement initialized, version", 82001L);
        zzhfVar.zzj().zzn().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzad = zzflVar.zzad();
        if (TextUtils.isEmpty(zzhfVar.zzd)) {
            if (zzhfVar.zzt().zzf(strZzad)) {
                zzhfVar.zzj().zzn().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhfVar.zzj().zzn().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + strZzad);
            }
        }
        zzhfVar.zzj().zzc().zza("Debug-level message logging enabled");
        if (zzhfVar.zzag != zzhfVar.zzai.get()) {
            zzhfVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhfVar.zzag), Integer.valueOf(zzhfVar.zzai.get()));
        }
        zzhfVar.zzz = true;
    }

    private static void zza(zzid zzidVar) {
        if (zzidVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zze zzeVar) {
        if (zzeVar != null) {
            if (zzeVar.zzy()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: " + String.valueOf(zzeVar.getClass()));
        }
        throw new IllegalStateException("Component not created");
    }

    private static void zza(zzic zzicVar) {
        if (zzicVar != null) {
            if (zzicVar.zzae()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: " + String.valueOf(zzicVar.getClass()));
        }
        throw new IllegalStateException("Component not created");
    }

    final /* synthetic */ void zza(String str, int i10, Throwable th, byte[] bArr, Map map) {
        if ((i10 == 200 || i10 == 204 || i10 == 304) && th == null) {
            zzn().zzo.zza(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString("deeplink", "");
                    String strOptString2 = jSONObject.optString("gclid", "");
                    String strOptString3 = jSONObject.optString("gbraid", "");
                    double dOptDouble = jSONObject.optDouble("timestamp", com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                    if (TextUtils.isEmpty(strOptString)) {
                        zzj().zzc().zza("Deferred Deep Link is empty.");
                        return;
                    }
                    Bundle bundle = new Bundle();
                    if (zzoi.zza() && this.zzi.zza(zzbi.zzcs)) {
                        if (!zzt().zzi(strOptString)) {
                            zzj().zzu().zza("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                            return;
                        }
                        bundle.putString("gbraid", strOptString3);
                    } else if (!zzt().zzi(strOptString)) {
                        zzj().zzu().zza("Deferred Deep Link validation failed. gclid, deep link", strOptString2, strOptString);
                        return;
                    }
                    bundle.putString("gclid", strOptString2);
                    bundle.putString("_cis", "ddp");
                    this.zzr.zzc("auto", com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundle);
                    zznd zzndVarZzt = zzt();
                    if (TextUtils.isEmpty(strOptString) || !zzndVarZzt.zza(strOptString, dOptDouble)) {
                        return;
                    }
                    zzndVarZzt.zza().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                    return;
                } catch (JSONException e) {
                    zzj().zzg().zza("Failed to parse the Deferred Deep Link response. exception", e);
                    return;
                }
            }
            zzj().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        zzj().zzu().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i10), th);
    }

    @WorkerThread
    final void zza(boolean z6) {
        this.zzac = Boolean.valueOf(z6);
    }

    @WorkerThread
    protected final void zza(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzih zzihVar;
        Boolean boolZza;
        zzl().zzt();
        if (zzpg.zza() && this.zzi.zza(zzbi.zzcg) && zzt().zzw()) {
            zznd zzndVarZzt = zzt();
            zzndVarZzt.zzt();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            ContextCompat.registerReceiver(zzndVarZzt.zza(), new zzp(zzndVarZzt.zzu), intentFilter, 2);
            zzndVarZzt.zzj().zzc().zza("Registered app receiver");
        }
        zzih zzihVarZzm = zzn().zzm();
        int iZza = zzihVarZzm.zza();
        Boolean boolZzg = this.zzi.zzg("google_analytics_default_allow_ad_storage");
        Boolean boolZzg2 = this.zzi.zzg("google_analytics_default_allow_analytics_storage");
        if ((boolZzg != null || boolZzg2 != null) && zzn().zza(-10)) {
            zzihVar = new zzih(boolZzg, boolZzg2, -10);
        } else {
            if (!TextUtils.isEmpty(zzh().zzae()) && (iZza == 0 || iZza == 30 || iZza == 10 || iZza == 30 || iZza == 30 || iZza == 40)) {
                zzp().zza(new zzih(null, null, -10), this.zza);
            } else if (TextUtils.isEmpty(zzh().zzae()) && zzddVar != null && zzddVar.zzg != null && zzn().zza(30)) {
                zzihVar = zzih.zza(zzddVar.zzg, 30);
                if (!zzihVar.zzi()) {
                }
            }
            zzihVar = null;
        }
        if (zzihVar != null) {
            zzp().zza(zzihVar, this.zza);
            zzihVarZzm = zzihVar;
        }
        zzp().zza(zzihVarZzm);
        if (zznp.zza() && this.zzi.zza(zzbi.zzcl)) {
            int iZza2 = zzn().zzh().zza();
            Boolean boolZzg3 = this.zzi.zzg("google_analytics_default_allow_ad_user_data");
            if (boolZzg3 != null && zzih.zza(-10, iZza2)) {
                zzp().zza(new zzay(boolZzg3, -10));
            } else if (!TextUtils.isEmpty(zzh().zzae()) && (iZza2 == 0 || iZza2 == 30)) {
                zzp().zza(new zzay((Boolean) null, -10));
            } else {
                if (TextUtils.isEmpty(zzh().zzae()) && zzddVar != null && zzddVar.zzg != null && zzih.zza(30, iZza2)) {
                    zzay zzayVarZza = zzay.zza(zzddVar.zzg, 30);
                    if (zzayVarZza.zzg()) {
                        zzp().zza(zzayVarZza);
                    }
                }
                if (TextUtils.isEmpty(zzh().zzae()) && zzddVar != null && zzddVar.zzg != null && zzn().zzh.zza() == null && (boolZza = zzay.zza(zzddVar.zzg)) != null) {
                    zzp().zza(zzddVar.zze, "allow_personalized_ads", (Object) boolZza.toString(), false);
                }
            }
        }
        if (zzn().zzc.zza() == 0) {
            zzj().zzp().zza("Persisting first open", Long.valueOf(this.zza));
            zzn().zzc.zza(this.zza);
        }
        zzp().zzb.zzb();
        if (!zzaf()) {
            if (zzac()) {
                if (!zzt().zze("android.permission.INTERNET")) {
                    zzj().zzg().zza("App is missing INTERNET permission");
                }
                if (!zzt().zze("android.permission.ACCESS_NETWORK_STATE")) {
                    zzj().zzg().zza("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!Wrappers.packageManager(this.zzc).isCallerInstantApp() && !this.zzi.zzw()) {
                    if (!zznd.zza(this.zzc)) {
                        zzj().zzg().zza("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zznd.zza(this.zzc, false)) {
                        zzj().zzg().zza("AppMeasurementService not registered/enabled");
                    }
                }
                zzj().zzg().zza("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                zzt();
                if (zznd.zza(zzh().zzae(), zzn().zzx(), zzh().zzac(), zzn().zzw())) {
                    zzj().zzn().zza("Rechecking which service to use due to a GMP App Id change");
                    zzn().zzy();
                    zzi().zzaa();
                    this.zzw.zzae();
                    this.zzw.zzad();
                    zzn().zzc.zza(this.zza);
                    zzn().zze.zza(null);
                }
                zzn().zzc(zzh().zzae());
                zzn().zzb(zzh().zzac());
            }
            if (!zzn().zzm().zza(zzih.zza.ANALYTICS_STORAGE)) {
                zzn().zze.zza(null);
            }
            zzp().zza(zzn().zze.zza());
            if (zznv.zza() && this.zzi.zza(zzbi.zzbm) && !zzt().zzx() && !TextUtils.isEmpty(zzn().zzq.zza())) {
                zzj().zzu().zza("Remote config removed with active feature rollouts");
                zzn().zzq.zza(null);
            }
            if (!TextUtils.isEmpty(zzh().zzae()) || !TextUtils.isEmpty(zzh().zzac())) {
                boolean zZzac = zzac();
                if (!zzn().zzaa() && !this.zzi.zzv()) {
                    zzn().zzb(!zZzac);
                }
                if (zZzac) {
                    zzp().zzaj();
                }
                zzs().zza.zza();
                zzr().zza(new AtomicReference<>());
                zzr().zza(zzn().zzt.zza());
            }
        }
        if (zzpg.zza() && this.zzi.zza(zzbi.zzcg) && zzt().zzw()) {
            final zziq zziqVarZzp = zzp();
            zziqVarZzp.getClass();
            new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhe
                @Override // java.lang.Runnable
                public final void run() {
                    zziqVarZzp.zzal();
                }
            }).start();
        }
        zzn().zzj.zza(true);
    }
}
