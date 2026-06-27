package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class zzby implements zzcv {
    private static volatile zzby zznn;
    private final Clock zzaa;
    private final long zzdp;
    private final zzq zzfq;
    private final Context zzno;
    private final String zznp;
    private final String zznq;
    private final zzt zznr;
    private final zzbf zzns;
    private final zzau zznt;
    private final zzbt zznu;
    private final zzfj zznv;
    private final zzgd zznw;
    private final zzas zznx;
    private final zzed zzny;
    private final zzdd zznz;
    private final zza zzoa;
    private final zzdz zzob;
    private zzaq zzoc;
    private zzeg zzod;
    private zzad zzoe;
    private zzap zzof;
    private zzbl zzog;
    private Boolean zzoh;
    private long zzoi;
    private volatile Boolean zzoj;

    @VisibleForTesting
    private Boolean zzok;

    @VisibleForTesting
    private Boolean zzol;
    private int zzom;
    private final boolean zzv;
    private final String zzx;
    private boolean zzce = false;
    private AtomicInteger zzon = new AtomicInteger(0);

    private zzby(zzdc zzdcVar) throws IllegalStateException {
        Bundle bundle;
        boolean z = false;
        Preconditions.checkNotNull(zzdcVar);
        this.zzfq = new zzq(zzdcVar.zzno);
        zzal.zza(this.zzfq);
        this.zzno = zzdcVar.zzno;
        this.zzx = zzdcVar.zzx;
        this.zznp = zzdcVar.zznp;
        this.zznq = zzdcVar.zznq;
        this.zzv = zzdcVar.zzv;
        this.zzoj = zzdcVar.zzoj;
        com.google.android.gms.internal.measurement.zzy zzyVar = zzdcVar.zzpe;
        if (zzyVar != null && (bundle = zzyVar.zzy) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzok = (Boolean) obj;
            }
            Object obj2 = zzyVar.zzy.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzol = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzcw.zzq(this.zzno);
        this.zzaa = DefaultClock.getInstance();
        this.zzdp = this.zzaa.currentTimeMillis();
        this.zznr = new zzt(this);
        zzbf zzbfVar = new zzbf(this);
        zzbfVar.zzai();
        this.zzns = zzbfVar;
        zzau zzauVar = new zzau(this);
        zzauVar.zzai();
        this.zznt = zzauVar;
        zzgd zzgdVar = new zzgd(this);
        zzgdVar.zzai();
        this.zznw = zzgdVar;
        zzas zzasVar = new zzas(this);
        zzasVar.zzai();
        this.zznx = zzasVar;
        this.zzoa = new zza(this);
        zzed zzedVar = new zzed(this);
        zzedVar.zzai();
        this.zzny = zzedVar;
        zzdd zzddVar = new zzdd(this);
        zzddVar.zzai();
        this.zznz = zzddVar;
        zzfj zzfjVar = new zzfj(this);
        zzfjVar.zzai();
        this.zznv = zzfjVar;
        zzdz zzdzVar = new zzdz(this);
        zzdzVar.zzai();
        this.zzob = zzdzVar;
        zzbt zzbtVar = new zzbt(this);
        zzbtVar.zzai();
        this.zznu = zzbtVar;
        com.google.android.gms.internal.measurement.zzy zzyVar2 = zzdcVar.zzpe;
        if (zzyVar2 != null && zzyVar2.zzu != 0) {
            z = true;
        }
        boolean z2 = !z;
        if (this.zzno.getApplicationContext() instanceof Application) {
            zzdd zzddVarZzs = zzs();
            if (zzddVarZzs.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) zzddVarZzs.getContext().getApplicationContext();
                if (zzddVarZzs.zzpf == null) {
                    zzddVarZzs.zzpf = new zzdx(zzddVarZzs, null);
                }
                if (z2) {
                    application.unregisterActivityLifecycleCallbacks(zzddVarZzs.zzpf);
                    application.registerActivityLifecycleCallbacks(zzddVarZzs.zzpf);
                    zzddVarZzs.zzad().zzdi().zzaq("Registered activity lifecycle callback");
                }
            }
        } else {
            zzad().zzdd().zzaq("Application context is not an Application");
        }
        this.zznu.zza(new zzbz(this, zzdcVar));
    }

    final void zzo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdc zzdcVar) throws IllegalStateException {
        zzaw zzawVarZzdg;
        String strConcat;
        zzac().zzq();
        zzt.zzbo();
        zzad zzadVar = new zzad(this);
        zzadVar.zzai();
        this.zzoe = zzadVar;
        zzap zzapVar = new zzap(this, zzdcVar.zzu);
        zzapVar.zzai();
        this.zzof = zzapVar;
        zzaq zzaqVar = new zzaq(this);
        zzaqVar.zzai();
        this.zzoc = zzaqVar;
        zzeg zzegVar = new zzeg(this);
        zzegVar.zzai();
        this.zzod = zzegVar;
        this.zznw.zzaj();
        this.zzns.zzaj();
        this.zzog = new zzbl(this);
        this.zzof.zzaj();
        zzad().zzdg().zza("App measurement is starting up, version", Long.valueOf(this.zznr.zzav()));
        zzad().zzdg().zzaq("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzan = zzapVar.zzan();
        if (TextUtils.isEmpty(this.zzx)) {
            if (zzab().zzbt(strZzan)) {
                zzawVarZzdg = zzad().zzdg();
                strConcat = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzawVarZzdg = zzad().zzdg();
                String strValueOf = String.valueOf(strZzan);
                strConcat = strValueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(strValueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzawVarZzdg.zzaq(strConcat);
        }
        zzad().zzdh().zzaq("Debug-level message logging enabled");
        if (this.zzom != this.zzon.get()) {
            zzad().zzda().zza("Not all components initialized", Integer.valueOf(this.zzom), Integer.valueOf(this.zzon.get()));
        }
        this.zzce = true;
    }

    protected final void start() throws IllegalStateException {
        zzac().zzq();
        if (zzae().zzlb.get() == 0) {
            zzae().zzlb.set(this.zzaa.currentTimeMillis());
        }
        if (Long.valueOf(zzae().zzlg.get()).longValue() == 0) {
            zzad().zzdi().zza("Persisting first open", Long.valueOf(this.zzdp));
            zzae().zzlg.set(this.zzdp);
        }
        if (!zzet()) {
            if (isEnabled()) {
                if (!zzab().zzbr("android.permission.INTERNET")) {
                    zzad().zzda().zzaq("App is missing INTERNET permission");
                }
                if (!zzab().zzbr("android.permission.ACCESS_NETWORK_STATE")) {
                    zzad().zzda().zzaq("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!Wrappers.packageManager(this.zzno).isCallerInstantApp() && !this.zznr.zzbw()) {
                    if (!zzbo.zzl(this.zzno)) {
                        zzad().zzda().zzaq("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zzgd.zzb(this.zzno, false)) {
                        zzad().zzda().zzaq("AppMeasurementService not registered/enabled");
                    }
                }
                zzad().zzda().zzaq("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(zzt().getGmpAppId()) || !TextUtils.isEmpty(zzt().zzao())) {
                zzab();
                if (zzgd.zza(zzt().getGmpAppId(), zzae().zzds(), zzt().zzao(), zzae().zzdt())) {
                    zzad().zzdg().zzaq("Rechecking which service to use due to a GMP App Id change");
                    zzae().zzdv();
                    zzw().resetAnalyticsData();
                    this.zzod.disconnect();
                    this.zzod.zzfh();
                    zzae().zzlg.set(this.zzdp);
                    zzae().zzli.zzav(null);
                }
                zzae().zzat(zzt().getGmpAppId());
                zzae().zzau(zzt().zzao());
                if (this.zznr.zzaa(zzt().zzan())) {
                    this.zznv.zzab(this.zzdp);
                }
            }
            zzs().zzbi(zzae().zzli.zzed());
            if (!TextUtils.isEmpty(zzt().getGmpAppId()) || !TextUtils.isEmpty(zzt().zzao())) {
                boolean zIsEnabled = isEnabled();
                if (!zzae().zzdz() && !this.zznr.zzbq()) {
                    zzae().zzf(!zIsEnabled);
                }
                if (!this.zznr.zzs(zzt().zzan()) || zIsEnabled) {
                    zzs().zzfb();
                }
                zzu().zza(new AtomicReference<>());
            }
        }
        zzae().zzlq.set(this.zznr.zza(zzal.zziw));
        zzae().zzlr.set(this.zznr.zza(zzal.zzix));
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzq zzag() {
        return this.zzfq;
    }

    public final zzt zzaf() {
        return this.zznr;
    }

    public final zzbf zzae() {
        zza((zzct) this.zzns);
        return this.zzns;
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzau zzad() {
        zza((zzcu) this.zznt);
        return this.zznt;
    }

    public final zzau zzei() {
        zzau zzauVar = this.zznt;
        if (zzauVar == null || !zzauVar.isInitialized()) {
            return null;
        }
        return this.zznt;
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzbt zzac() {
        zza((zzcu) this.zznu);
        return this.zznu;
    }

    public final zzfj zzx() {
        zza((zzf) this.zznv);
        return this.zznv;
    }

    public final zzbl zzej() {
        return this.zzog;
    }

    final zzbt zzek() {
        return this.zznu;
    }

    public final zzdd zzs() {
        zza((zzf) this.zznz);
        return this.zznz;
    }

    public final zzgd zzab() {
        zza((zzct) this.zznw);
        return this.zznw;
    }

    public final zzas zzaa() {
        zza((zzct) this.zznx);
        return this.zznx;
    }

    public final zzaq zzw() {
        zza((zzf) this.zzoc);
        return this.zzoc;
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final Context getContext() {
        return this.zzno;
    }

    public final boolean zzel() {
        return TextUtils.isEmpty(this.zzx);
    }

    public final String zzem() {
        return this.zzx;
    }

    public final String zzen() {
        return this.zznp;
    }

    public final String zzeo() {
        return this.zznq;
    }

    public final boolean zzep() {
        return this.zzv;
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final Clock zzz() {
        return this.zzaa;
    }

    public final zzed zzv() {
        zza((zzf) this.zzny);
        return this.zzny;
    }

    public final zzeg zzu() {
        zza((zzf) this.zzod);
        return this.zzod;
    }

    public final zzad zzy() {
        zza((zzcu) this.zzoe);
        return this.zzoe;
    }

    public final zzap zzt() {
        zza((zzf) this.zzof);
        return this.zzof;
    }

    public final zza zzr() {
        zza zzaVar = this.zzoa;
        if (zzaVar != null) {
            return zzaVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @VisibleForTesting
    public static zzby zza(Context context, String str, String str2, Bundle bundle) {
        return zza(context, new com.google.android.gms.internal.measurement.zzy(0L, 0L, true, null, null, null, bundle));
    }

    public static zzby zza(Context context, com.google.android.gms.internal.measurement.zzy zzyVar) {
        Bundle bundle;
        if (zzyVar != null && (zzyVar.origin == null || zzyVar.zzx == null)) {
            zzyVar = new com.google.android.gms.internal.measurement.zzy(zzyVar.zzt, zzyVar.zzu, zzyVar.zzv, zzyVar.zzw, null, null, zzyVar.zzy);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zznn == null) {
            synchronized (zzby.class) {
                if (zznn == null) {
                    zznn = new zzby(new zzdc(context, zzyVar));
                }
            }
        } else if (zzyVar != null && (bundle = zzyVar.zzy) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            zznn.zza(zzyVar.zzy.getBoolean("dataCollectionDefaultEnabled"));
        }
        return zznn;
    }

    private final void zzah() {
        if (!this.zzce) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    private static void zza(zzcu zzcuVar) {
        if (zzcuVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzcuVar.isInitialized()) {
            return;
        }
        String strValueOf = String.valueOf(zzcuVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    private static void zza(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzfVar.isInitialized()) {
            return;
        }
        String strValueOf = String.valueOf(zzfVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    private static void zza(zzct zzctVar) {
        if (zzctVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    final void zza(boolean z) {
        this.zzoj = Boolean.valueOf(z);
    }

    public final boolean zzeq() {
        return this.zzoj != null && this.zzoj.booleanValue();
    }

    public final boolean isEnabled() {
        boolean zBooleanValue;
        zzac().zzq();
        zzah();
        if (this.zznr.zza(zzal.zzio)) {
            if (this.zznr.zzbq()) {
                return false;
            }
            Boolean bool = this.zzol;
            if (bool != null && bool.booleanValue()) {
                return false;
            }
            Boolean boolZzdw = zzae().zzdw();
            if (boolZzdw != null) {
                return boolZzdw.booleanValue();
            }
            Boolean boolZzbr = this.zznr.zzbr();
            if (boolZzbr != null) {
                return boolZzbr.booleanValue();
            }
            Boolean bool2 = this.zzok;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            if (GoogleServices.isMeasurementExplicitlyDisabled()) {
                return false;
            }
            if (!this.zznr.zza(zzal.zzik) || this.zzoj == null) {
                return true;
            }
            return this.zzoj.booleanValue();
        }
        if (this.zznr.zzbq()) {
            return false;
        }
        Boolean boolZzbr2 = this.zznr.zzbr();
        if (boolZzbr2 != null) {
            zBooleanValue = boolZzbr2.booleanValue();
        } else {
            zBooleanValue = !GoogleServices.isMeasurementExplicitlyDisabled();
            if (zBooleanValue && this.zzoj != null && zzal.zzik.get(null).booleanValue()) {
                zBooleanValue = this.zzoj.booleanValue();
            }
        }
        return zzae().zze(zBooleanValue);
    }

    final long zzer() {
        Long lValueOf = Long.valueOf(zzae().zzlg.get());
        if (lValueOf.longValue() == 0) {
            return this.zzdp;
        }
        return Math.min(this.zzdp, lValueOf.longValue());
    }

    final void zzn() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void zzb(zzcu zzcuVar) {
        this.zzom++;
    }

    final void zzb(zzf zzfVar) {
        this.zzom++;
    }

    final void zzes() {
        this.zzon.incrementAndGet();
    }

    protected final boolean zzet() {
        zzah();
        zzac().zzq();
        Boolean bool = this.zzoh;
        if (bool == null || this.zzoi == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.zzaa.elapsedRealtime() - this.zzoi) > 1000)) {
            this.zzoi = this.zzaa.elapsedRealtime();
            boolean z = true;
            this.zzoh = Boolean.valueOf(zzab().zzbr("android.permission.INTERNET") && zzab().zzbr("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzno).isCallerInstantApp() || this.zznr.zzbw() || (zzbo.zzl(this.zzno) && zzgd.zzb(this.zzno, false))));
            if (this.zzoh.booleanValue()) {
                if (!zzab().zzr(zzt().getGmpAppId(), zzt().zzao()) && TextUtils.isEmpty(zzt().zzao())) {
                    z = false;
                }
                this.zzoh = Boolean.valueOf(z);
            }
        }
        return this.zzoh.booleanValue();
    }
}
