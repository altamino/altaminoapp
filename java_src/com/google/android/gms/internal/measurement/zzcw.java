package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public abstract class zzcw<T> {

    @SuppressLint({"StaticFieldLeak"})
    private static Context zzno;
    private static boolean zzzu;
    private final String name;
    private volatile T zzje;
    private final zzdc zzzv;
    private final T zzzw;
    private volatile int zzzy;
    private static final Object zzzt = new Object();
    private static final AtomicInteger zzzx = new AtomicInteger();

    public static void zzq(Context context) {
        synchronized (zzzt) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzno != context) {
                synchronized (zzcl.class) {
                    zzcl.zzzi.clear();
                }
                synchronized (zzdd.class) {
                    zzdd.zzaai.clear();
                }
                synchronized (zzcs.class) {
                    zzcs.zzzq = null;
                }
                zzzx.incrementAndGet();
                zzno = context;
            }
        }
    }

    abstract T zzc(Object obj);

    static void zzjp() {
        zzzx.incrementAndGet();
    }

    private zzcw(zzdc zzdcVar, String str, T t) {
        this.zzzy = -1;
        if (zzdcVar.zzaaa == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zzzv = zzdcVar;
        this.name = str;
        this.zzzw = t;
    }

    private final String zzce(String str) {
        if (str != null && str.isEmpty()) {
            return this.name;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf(this.name);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public final String zzjq() {
        return zzce(this.zzzv.zzaac);
    }

    public final T getDefaultValue() {
        return this.zzzw;
    }

    public final T get() {
        int i = zzzx.get();
        if (this.zzzy < i) {
            synchronized (this) {
                if (this.zzzy < i) {
                    if (zzno == null) {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                    T tZzjr = zzjr();
                    if (tZzjr == null && (tZzjr = zzjs()) == null) {
                        tZzjr = this.zzzw;
                    }
                    this.zzje = tZzjr;
                    this.zzzy = i;
                }
            }
        }
        return this.zzje;
    }

    private final T zzjr() {
        zzcp zzcpVarZze;
        Object objZzca;
        String str = (String) zzcs.zzp(zzno).zzca("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (!(str != null && zzci.zzyv.matcher(str).matches())) {
            if (this.zzzv.zzaaa != null) {
                zzcpVarZze = zzcl.zza(zzno.getContentResolver(), this.zzzv.zzaaa);
            } else {
                zzcpVarZze = zzdd.zze(zzno, null);
            }
            if (zzcpVarZze != null && (objZzca = zzcpVarZze.zzca(zzjq())) != null) {
                return zzc(objZzca);
            }
        } else {
            String strValueOf = String.valueOf(zzjq());
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        }
        return null;
    }

    private final T zzjs() {
        Object objZzca = zzcs.zzp(zzno).zzca(zzce(this.zzzv.zzaab));
        if (objZzca != null) {
            return zzc(objZzca);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcw<Long> zza(zzdc zzdcVar, String str, long j) {
        return new zzcx(zzdcVar, str, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcw<Integer> zza(zzdc zzdcVar, String str, int i) {
        return new zzcy(zzdcVar, str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcw<Boolean> zza(zzdc zzdcVar, String str, boolean z) {
        return new zzcz(zzdcVar, str, Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcw<Double> zza(zzdc zzdcVar, String str, double d) {
        return new zzda(zzdcVar, str, Double.valueOf(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcw<String> zza(zzdc zzdcVar, String str, String str2) {
        return new zzdb(zzdcVar, str, str2);
    }

    /* synthetic */ zzcw(zzdc zzdcVar, String str, Object obj, zzcx zzcxVar) {
        this(zzdcVar, str, obj);
    }
}
