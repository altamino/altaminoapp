package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzoc;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfr extends zzic {
    private char zza;
    private long zzb;

    @GuardedBy
    private String zzc;
    private final zzft zzd;
    private final zzft zze;
    private final zzft zzf;
    private final zzft zzg;
    private final zzft zzh;
    private final zzft zzi;
    private final zzft zzj;
    private final zzft zzk;
    private final zzft zzl;

    @VisibleForTesting
    private final String zzy() {
        String str;
        synchronized (this) {
            try {
                if (this.zzc == null) {
                    this.zzc = this.zzu.zzw() != null ? this.zzu.zzw() : "FA";
                }
                Preconditions.checkNotNull(this.zzc);
                str = this.zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final zzft zzc() {
        return this.zzk;
    }

    public final zzft zzg() {
        return this.zzd;
    }

    public final zzft zzh() {
        return this.zzf;
    }

    public final zzft zzm() {
        return this.zze;
    }

    public final zzft zzn() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzic
    protected final boolean zzo() {
        return false;
    }

    public final zzft zzp() {
        return this.zzl;
    }

    public final zzft zzu() {
        return this.zzg;
    }

    public final zzft zzv() {
        return this.zzi;
    }

    public final zzft zzw() {
        return this.zzh;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    zzfr(zzhf zzhfVar) {
        super(zzhfVar);
        this.zza = (char) 0;
        this.zzb = -1L;
        this.zzd = new zzft(this, 6, false, false);
        this.zze = new zzft(this, 6, true, false);
        this.zzf = new zzft(this, 6, false, true);
        this.zzg = new zzft(this, 5, false, false);
        this.zzh = new zzft(this, 5, true, false);
        this.zzi = new zzft(this, 5, false, true);
        this.zzj = new zzft(this, 4, false, false);
        this.zzk = new zzft(this, 3, false, false);
        this.zzl = new zzft(this, 2, false, false);
    }

    @VisibleForTesting
    private static String zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            return (zzoc.zza() && zzbi.zzcb.zza(null).booleanValue()) ? "" : str;
        }
        return str.substring(0, iLastIndexOf);
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

    public final String zzx() {
        Pair<String, Long> pairZza;
        if (zzk().zzb == null || (pairZza = zzk().zzb.zza()) == null || pairZza == zzgd.zza) {
            return null;
        }
        return String.valueOf(pairZza.second) + ":" + ((String) pairZza.first);
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    protected static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new zzfw(str);
    }

    static String zza(boolean z6, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strZza = zza(z6, obj);
        String strZza2 = zza(z6, obj2);
        String strZza3 = zza(z6, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strZza)) {
            sb.append(str2);
            sb.append(strZza);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strZza2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strZza2);
        }
        if (!TextUtils.isEmpty(strZza3)) {
            sb.append(str3);
            sb.append(strZza3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    private static String zza(boolean z6, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z6) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            StringBuilder sb = new StringBuilder(z6 ? th.getClass().getName() : th.toString());
            String strZzb = zzb(zzhf.class.getCanonicalName());
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzb(className).equals(strZzb)) {
                    sb.append(": ");
                    sb.append(stackTraceElement);
                    break;
                }
            }
            return sb.toString();
        }
        if (obj instanceof zzfw) {
            return ((zzfw) obj).zza;
        }
        return z6 ? "-" : String.valueOf(obj);
    }

    protected final void zza(int i10, boolean z6, boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z6 && zza(i10)) {
            zza(i10, zza(false, str, obj, obj2, obj3));
        }
        if (z10 || i10 < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzgy zzgyVarZzo = this.zzu.zzo();
        if (zzgyVarZzo == null) {
            zza(6, "Scheduler not set. Not logging error/warn");
            return;
        }
        if (!zzgyVarZzo.zzae()) {
            zza(6, "Scheduler not initialized. Not logging error/warn");
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 >= 9) {
            i10 = 8;
        }
        zzgyVarZzo.zzb(new zzfu(this, i10, str, obj, obj2, obj3));
    }

    @VisibleForTesting
    protected final void zza(int i10, String str) {
        Log.println(i10, zzy(), str);
    }

    @VisibleForTesting
    protected final boolean zza(int i10) {
        return Log.isLoggable(zzy(), i10);
    }
}
