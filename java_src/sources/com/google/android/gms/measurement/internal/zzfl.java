package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.measurement.zznp;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzps;
import com.google.android.gms.internal.measurement.zzqe;
import com.narvii.util.DateUtils;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfl extends zze {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private long zzg;
    private List<String> zzh;
    private String zzi;
    private int zzj;
    private String zzk;
    private String zzl;
    private String zzm;
    private long zzn;
    private String zzo;

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @WorkerThread
    final List<String> zzaf() {
        return this.zzh;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x017c  */
    /* JADX WARN: Code duplicated, block: B:52:0x017f  */
    /* JADX WARN: Code duplicated, block: B:58:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x01ce  */
    @WorkerThread
    final zzo zza(String str) {
        String strZzf;
        int iZza;
        long j6;
        List<String> list;
        String str2;
        long j10;
        String str3;
        Boolean boolZzg;
        boolean zBooleanValue;
        int iZzc;
        long jZzh;
        zzt();
        zzih zzihVarZzm = zzk().zzm();
        if (zznp.zza() && zze().zza(zzbi.zzcl)) {
            strZzf = zzk().zzh().zzf();
            iZza = zzihVarZzm.zza();
        } else {
            strZzf = "";
            iZza = 100;
        }
        String str4 = strZzf;
        int i10 = iZza;
        String strZzad = zzad();
        String strZzae = zzae();
        zzu();
        String str5 = this.zzb;
        long jZzab = zzab();
        zzu();
        Preconditions.checkNotNull(this.zzd);
        String str6 = this.zzd;
        zzu();
        zzt();
        if (this.zzf == 0) {
            this.zzf = this.zzu.zzt().zza(zza(), zza().getPackageName());
        }
        long j11 = this.zzf;
        boolean zZzac = this.zzu.zzac();
        boolean z6 = !zzk().zzm;
        zzt();
        String strZzah = !this.zzu.zzac() ? null : zzah();
        zzhf zzhfVar = this.zzu;
        long jZza = zzhfVar.zzn().zzc.zza();
        long jMin = jZza == 0 ? zzhfVar.zza : Math.min(zzhfVar.zza, jZza);
        int iZzaa = zzaa();
        boolean zZzp = zze().zzp();
        zzgd zzgdVarZzk = zzk();
        zzgdVarZzk.zzt();
        boolean z10 = zzgdVarZzk.zzc().getBoolean("deferred_analytics_collection", false);
        String strZzac = zzac();
        Boolean boolZzg2 = zze().zzg("google_analytics_default_allow_ad_personalization_signals");
        Boolean boolValueOf = boolZzg2 == null ? null : Boolean.valueOf(!boolZzg2.booleanValue());
        long j12 = this.zzg;
        List<String> list2 = this.zzh;
        String strZze = zzihVarZzm.zze();
        if (this.zzi == null) {
            this.zzi = zzq().zzp();
        }
        String str7 = this.zzi;
        if (zzps.zza()) {
            j6 = j11;
            if (zze().zza(zzbi.zzbs)) {
                zzt();
                j10 = 0;
                if (this.zzn != 0) {
                    list = list2;
                    str2 = str7;
                    long jCurrentTimeMillis = zzb().currentTimeMillis() - this.zzn;
                    if (this.zzm != null && jCurrentTimeMillis > DateUtils.ONE_DAY && this.zzo == null) {
                        zzag();
                    }
                } else {
                    list = list2;
                    str2 = str7;
                }
                if (this.zzm == null) {
                    zzag();
                }
                str3 = this.zzm;
            }
            boolZzg = zze().zzg("google_analytics_sgtm_upload_enabled");
            if (boolZzg == null) {
                zBooleanValue = false;
            } else {
                zBooleanValue = boolZzg.booleanValue();
            }
            long jZzc = zzq().zzc(zzad());
            if (zzpg.zza() || !zze().zza(zzbi.zzcg)) {
                iZzc = 0;
            } else {
                zzq();
                iZzc = zznd.zzc();
            }
            if (zzpg.zza() || !zze().zza(zzbi.zzcg)) {
                jZzh = j10;
            } else {
                jZzh = zzq().zzh();
            }
            return new zzo(strZzad, strZzae, str5, jZzab, str6, 82001L, j6, str, zZzac, z6, strZzah, 0L, jMin, iZzaa, zZzp, z10, strZzac, boolValueOf, j12, list, (String) null, strZze, str2, str3, zBooleanValue, jZzc, i10, str4, iZzc, jZzh);
        }
        j6 = j11;
        list = list2;
        str2 = str7;
        j10 = 0;
        str3 = null;
        boolZzg = zze().zzg("google_analytics_sgtm_upload_enabled");
        if (boolZzg == null) {
            zBooleanValue = false;
        } else {
            zBooleanValue = boolZzg.booleanValue();
        }
        long jZzc2 = zzq().zzc(zzad());
        if (zzpg.zza()) {
            iZzc = 0;
        } else {
            iZzc = 0;
        }
        if (zzpg.zza()) {
            jZzh = j10;
        } else {
            jZzh = j10;
        }
        return new zzo(strZzad, strZzae, str5, jZzab, str6, 82001L, j6, str, zZzac, z6, strZzah, 0L, jMin, iZzaa, zZzp, z10, strZzac, boolValueOf, j12, list, (String) null, strZze, str2, str3, zBooleanValue, jZzc2, i10, str4, iZzc, jZzh);
    }

    final boolean zzb(String str) {
        String str2 = this.zzo;
        boolean z6 = (str2 == null || str2.equals(str)) ? false : true;
        this.zzo = str;
        return z6;
    }

    zzfl(zzhf zzhfVar, long j6) {
        super(zzhfVar);
        this.zzn = 0L;
        this.zzo = null;
        this.zzg = j6;
    }

    @VisibleForTesting
    @WorkerThread
    private final String zzah() {
        if (zzqe.zza() && zze().zza(zzbi.zzbk)) {
            zzj().zzp().zza("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> clsLoadClass = zza().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (clsLoadClass == null) {
                return null;
            }
            try {
                Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zza());
                if (objInvoke == null) {
                    return null;
                }
                try {
                    return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                } catch (Exception unused) {
                    zzj().zzv().zza("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                zzj().zzw().zza("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
    }

    @WorkerThread
    final int zzaa() {
        zzu();
        return this.zzj;
    }

    @WorkerThread
    final int zzab() {
        zzu();
        return this.zzc;
    }

    @WorkerThread
    final String zzac() {
        zzu();
        return this.zzl;
    }

    @WorkerThread
    final String zzad() {
        zzu();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    @WorkerThread
    final String zzae() {
        zzt();
        zzu();
        Preconditions.checkNotNull(this.zzk);
        return this.zzk;
    }

    @WorkerThread
    final void zzag() {
        String str;
        String str2;
        zzt();
        if (!zzk().zzm().zza(zzih.zza.ANALYTICS_STORAGE)) {
            zzj().zzc().zza("Analytics Storage consent is not granted");
            str = null;
        } else {
            byte[] bArr = new byte[16];
            zzq().zzv().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        zzft zzftVarZzc = zzj().zzc();
        Object[] objArr = new Object[1];
        if (str == null) {
            str2 = "null";
        } else {
            str2 = "not null";
        }
        objArr[0] = str2;
        zzftVarZzc.zza(String.format("Resetting session stitching token to %s", objArr));
        this.zzm = str;
        this.zzn = zzb().currentTimeMillis();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
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

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfl zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfo zzh() {
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

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zziq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkh zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkp zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzlx zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00df  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:37:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:38:0x010a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0118  */
    /* JADX WARN: Code duplicated, block: B:40:0x0126  */
    /* JADX WARN: Code duplicated, block: B:41:0x0134  */
    /* JADX WARN: Code duplicated, block: B:42:0x0142  */
    /* JADX WARN: Code duplicated, block: B:43:0x0150  */
    /* JADX WARN: Code duplicated, block: B:46:0x0160  */
    /* JADX WARN: Code duplicated, block: B:49:0x0167  */
    /* JADX WARN: Code duplicated, block: B:52:0x018a  */
    /* JADX WARN: Code duplicated, block: B:53:0x018b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0194 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:50:0x016f, B:54:0x018c, B:56:0x0194, B:60:0x01b0, B:62:0x01c4, B:64:0x01c9, B:63:0x01c7), top: B:90:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01b0 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:50:0x016f, B:54:0x018c, B:56:0x0194, B:60:0x01b0, B:62:0x01c4, B:64:0x01c9, B:63:0x01c7), top: B:90:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01c4 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:50:0x016f, B:54:0x018c, B:56:0x0194, B:60:0x01b0, B:62:0x01c4, B:64:0x01c9, B:63:0x01c7), top: B:90:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01c7 A[Catch: IllegalStateException -> 0x01ac, TryCatch #3 {IllegalStateException -> 0x01ac, blocks: (B:50:0x016f, B:54:0x018c, B:56:0x0194, B:60:0x01b0, B:62:0x01c4, B:64:0x01c9, B:63:0x01c7), top: B:90:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:72:0x0201  */
    /* JADX WARN: Code duplicated, block: B:75:0x020b  */
    /* JADX WARN: Code duplicated, block: B:78:0x021e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0222  */
    /* JADX WARN: Code duplicated, block: B:82:0x022d  */
    /* JADX WARN: Code duplicated, block: B:92:0x021e A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.measurement.internal.zze
    @WorkerThread
    protected final void zzx() {
        String str;
        String string;
        boolean z6;
        Object[] objArr;
        int iZzc;
        List<String> listZzi;
        Iterator<String> it;
        String strZza;
        String str2;
        String packageName = zza().getPackageName();
        PackageManager packageManager = zza().getPackageManager();
        String str3 = "";
        String installerPackageName = EnvironmentCompat.MEDIA_UNKNOWN;
        String str4 = "Unknown";
        int i10 = Integer.MIN_VALUE;
        try {
            if (packageManager == null) {
                zzj().zzg().zza("PackageManager is null, app identity information might be inaccurate. appId", zzfr.zza(packageName));
            } else {
                try {
                    installerPackageName = packageManager.getInstallerPackageName(packageName);
                } catch (IllegalArgumentException unused) {
                    zzj().zzg().zza("Error retrieving app installer package name. appId", zzfr.zza(packageName));
                }
                if (installerPackageName == null) {
                    installerPackageName = "manual_install";
                } else if ("com.android.vending".equals(installerPackageName)) {
                    installerPackageName = "";
                }
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(zza().getPackageName(), 0);
                    if (packageInfo != null) {
                        CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                        if (TextUtils.isEmpty(applicationLabel)) {
                            string = "Unknown";
                        } else {
                            string = applicationLabel.toString();
                        }
                        try {
                            str4 = packageInfo.versionName;
                            i10 = packageInfo.versionCode;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str = str4;
                            str4 = string;
                            zzj().zzg().zza("Error retrieving package info. appId, appName", zzfr.zza(packageName), str4);
                            string = str4;
                            str4 = str;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = "Unknown";
                }
                this.zza = packageName;
                this.zzd = installerPackageName;
                this.zzb = str4;
                this.zzc = i10;
                this.zze = string;
                this.zzf = 0L;
                z6 = true;
                if (TextUtils.isEmpty(this.zzu.zzu()) && "am".equals(this.zzu.zzv())) {
                    objArr = true;
                } else {
                    objArr = false;
                }
                iZzc = this.zzu.zzc();
                switch (iZzc) {
                    case 0:
                        zzj().zzp().zza("App measurement collection enabled");
                        break;
                    case 1:
                        zzj().zzn().zza("App measurement deactivated via the manifest");
                        break;
                    case 2:
                        zzj().zzp().zza("App measurement deactivated via the init parameters");
                        break;
                    case 3:
                        zzj().zzn().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                        break;
                    case 4:
                        zzj().zzn().zza("App measurement disabled via the manifest");
                        break;
                    case 5:
                        zzj().zzp().zza("App measurement disabled via the init parameters");
                        break;
                    case 6:
                        zzj().zzv().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                        break;
                    case 7:
                        zzj().zzn().zza("App measurement disabled via the global data collection setting");
                        break;
                    case 8:
                        zzj().zzn().zza("App measurement disabled due to denied storage consent");
                        break;
                    default:
                        zzj().zzn().zza("App measurement disabled");
                        zzj().zzm().zza("Invalid scion state in identity");
                        break;
                }
                if (iZzc != 0) {
                    z6 = false;
                }
                this.zzk = "";
                this.zzl = "";
                if (objArr != false) {
                    this.zzl = this.zzu.zzu();
                }
                strZza = new zzgz(zza(), this.zzu.zzx()).zza("google_app_id");
                if (TextUtils.isEmpty(strZza)) {
                    str3 = strZza;
                }
                this.zzk = str3;
                if (!TextUtils.isEmpty(strZza)) {
                    this.zzl = new zzgz(zza(), this.zzu.zzx()).zza("admob_app_id");
                }
                if (z6) {
                    zzft zzftVarZzp = zzj().zzp();
                    String str5 = this.zza;
                    if (TextUtils.isEmpty(this.zzk)) {
                        str2 = this.zzl;
                    } else {
                        str2 = this.zzk;
                    }
                    zzftVarZzp.zza("App measurement enabled for app package, google app id", str5, str2);
                }
                this.zzh = null;
                listZzi = zze().zzi("analytics.safelisted_events");
                if (listZzi == null) {
                    if (listZzi.isEmpty()) {
                        zzj().zzv().zza("Safelisted event list is empty. Ignoring");
                    } else {
                        it = listZzi.iterator();
                        do {
                            if (it.hasNext()) {
                            } else {
                                this.zzh = listZzi;
                            }
                        } while (zzq().zzb("safelisted event", it.next()));
                    }
                } else {
                    this.zzh = listZzi;
                }
                if (packageManager != null) {
                    this.zzj = InstantApps.isInstantApp(zza()) ? 1 : 0;
                } else {
                    this.zzj = 0;
                }
            }
            strZza = new zzgz(zza(), this.zzu.zzx()).zza("google_app_id");
            if (TextUtils.isEmpty(strZza)) {
                str3 = strZza;
            }
            this.zzk = str3;
            if (!TextUtils.isEmpty(strZza)) {
                this.zzl = new zzgz(zza(), this.zzu.zzx()).zza("admob_app_id");
            }
            if (z6) {
                zzft zzftVarZzp2 = zzj().zzp();
                String str6 = this.zza;
                if (TextUtils.isEmpty(this.zzk)) {
                    str2 = this.zzl;
                } else {
                    str2 = this.zzk;
                }
                zzftVarZzp2.zza("App measurement enabled for app package, google app id", str6, str2);
            }
        } catch (IllegalStateException e) {
            zzj().zzg().zza("Fetching Google App Id failed with exception. appId", zzfr.zza(packageName), e);
        }
        string = "Unknown";
        this.zza = packageName;
        this.zzd = installerPackageName;
        this.zzb = str4;
        this.zzc = i10;
        this.zze = string;
        this.zzf = 0L;
        z6 = true;
        if (TextUtils.isEmpty(this.zzu.zzu())) {
            objArr = false;
        } else {
            objArr = false;
        }
        iZzc = this.zzu.zzc();
        switch (iZzc) {
            case 0:
                zzj().zzp().zza("App measurement collection enabled");
                break;
            case 1:
                zzj().zzn().zza("App measurement deactivated via the manifest");
                break;
            case 2:
                zzj().zzp().zza("App measurement deactivated via the init parameters");
                break;
            case 3:
                zzj().zzn().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                break;
            case 4:
                zzj().zzn().zza("App measurement disabled via the manifest");
                break;
            case 5:
                zzj().zzp().zza("App measurement disabled via the init parameters");
                break;
            case 6:
                zzj().zzv().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                break;
            case 7:
                zzj().zzn().zza("App measurement disabled via the global data collection setting");
                break;
            case 8:
                zzj().zzn().zza("App measurement disabled due to denied storage consent");
                break;
            default:
                zzj().zzn().zza("App measurement disabled");
                zzj().zzm().zza("Invalid scion state in identity");
                break;
        }
        if (iZzc != 0) {
            z6 = false;
        }
        this.zzk = "";
        this.zzl = "";
        if (objArr != false) {
            this.zzl = this.zzu.zzu();
        }
        this.zzh = null;
        listZzi = zze().zzi("analytics.safelisted_events");
        if (listZzi == null) {
            if (listZzi.isEmpty()) {
                zzj().zzv().zza("Safelisted event list is empty. Ignoring");
            } else {
                it = listZzi.iterator();
                do {
                    if (it.hasNext()) {
                    } else {
                        this.zzh = listZzi;
                    }
                } while (zzq().zzb("safelisted event", it.next()));
            }
        } else {
            this.zzh = listZzi;
        }
        if (packageManager != null) {
            this.zzj = InstantApps.isInstantApp(zza()) ? 1 : 0;
        } else {
            this.zzj = 0;
        }
    }
}
