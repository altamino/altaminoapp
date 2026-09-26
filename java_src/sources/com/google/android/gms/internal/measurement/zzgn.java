package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.g;
import com.google.common.base.l;
import com.google.common.base.o;
import com.google.common.base.u;
import com.google.common.base.v;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public abstract class zzgn<T> {
    private static volatile zzgu zzb;
    private static volatile boolean zzc;
    private final zzgv zzg;
    private final String zzh;
    private final T zzi;
    private volatile int zzj;
    private volatile T zzk;
    private final boolean zzl;
    private static final Object zza = new Object();
    private static final AtomicReference<Collection<zzgn<?>>> zzd = new AtomicReference<>();
    private static zzgy zze = new zzgy(new zzhb() { // from class: com.google.android.gms.internal.measurement.zzgo
        @Override // com.google.android.gms.internal.measurement.zzhb
        public final boolean zza() {
            return zzgn.zzd();
        }
    });
    private static final AtomicInteger zzf = new AtomicInteger();

    static /* synthetic */ zzgn zza(zzgv zzgvVar, String str, Boolean bool, boolean z6) {
        return new zzgq(zzgvVar, str, bool, true);
    }

    private final T zzb(zzgu zzguVar) {
        zzgb zzgbVarZza;
        Object objZza;
        if (this.zzg.zzb == null) {
            zzgbVarZza = zzgw.zza(zzguVar.zza(), this.zzg.zza, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzgm
                @Override // java.lang.Runnable
                public final void run() {
                    zzgn.zzc();
                }
            });
        } else if (zzgl.zza(zzguVar.zza(), this.zzg.zzb)) {
            zzgbVarZza = this.zzg.zzg ? zzfy.zza(zzguVar.zza().getContentResolver(), zzgk.zza(zzgk.zza(zzguVar.zza(), this.zzg.zzb.getLastPathSegment())), new Runnable() { // from class: com.google.android.gms.internal.measurement.zzgm
                @Override // java.lang.Runnable
                public final void run() {
                    zzgn.zzc();
                }
            }) : zzfy.zza(zzguVar.zza().getContentResolver(), this.zzg.zzb, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzgm
                @Override // java.lang.Runnable
                public final void run() {
                    zzgn.zzc();
                }
            });
        } else {
            zzgbVarZza = null;
        }
        if (zzgbVarZza == null || (objZza = zzgbVarZza.zza(zzb())) == null) {
            return null;
        }
        return zza(objZza);
    }

    static /* synthetic */ boolean zzd() {
        return true;
    }

    abstract T zza(Object obj);

    private zzgn(zzgv zzgvVar, String str, T t5, boolean z6) {
        this.zzj = -1;
        String str2 = zzgvVar.zza;
        if (str2 == null && zzgvVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && zzgvVar.zzb != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzg = zzgvVar;
        this.zzh = str;
        this.zzi = t5;
        this.zzl = z6;
    }

    static /* synthetic */ zzgn zza(zzgv zzgvVar, String str, Double d, boolean z6) {
        return new zzgt(zzgvVar, str, d, true);
    }

    public static void zzc() {
        zzf.incrementAndGet();
    }

    static /* synthetic */ zzgn zza(zzgv zzgvVar, String str, Long l, boolean z6) {
        return new zzgr(zzgvVar, str, l, true);
    }

    static /* synthetic */ zzgn zza(zzgv zzgvVar, String str, String str2, boolean z6) {
        return new zzgs(zzgvVar, str, str2, true);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007c A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:8:0x001c, B:10:0x0020, B:12:0x0029, B:14:0x0039, B:20:0x0055, B:22:0x0060, B:35:0x007e, B:38:0x0086, B:39:0x0089, B:40:0x008d, B:25:0x0067, B:34:0x007c, B:28:0x006e, B:31:0x0075, B:41:0x0091), top: B:47:0x001c }] */
    public final T zza() {
        T tZzb;
        if (!this.zzl) {
            o.q(zze.zza(this.zzh), "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i10 = zzf.get();
        if (this.zzj < i10) {
            synchronized (this) {
                try {
                    if (this.zzj < i10) {
                        zzgu zzguVar = zzb;
                        l<zzgh> lVarA = l.a();
                        String strZza = null;
                        if (zzguVar != null) {
                            lVarA = zzguVar.zzb().get();
                            if (lVarA.c()) {
                                zzgh zzghVarB = lVarA.b();
                                zzgv zzgvVar = this.zzg;
                                strZza = zzghVarB.zza(zzgvVar.zzb, zzgvVar.zza, zzgvVar.zzd, this.zzh);
                            }
                        }
                        o.q(zzguVar != null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                        if (this.zzg.zzf) {
                            tZzb = zza(zzguVar);
                            if (tZzb == null && (tZzb = zzb(zzguVar)) == null) {
                                tZzb = this.zzi;
                            }
                        } else {
                            tZzb = zzb(zzguVar);
                            if (tZzb == null && (tZzb = zza(zzguVar)) == null) {
                                tZzb = this.zzi;
                            }
                        }
                        if (lVarA.c()) {
                            tZzb = strZza == null ? this.zzi : zza((Object) strZza);
                        }
                        this.zzk = tZzb;
                        this.zzj = i10;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.zzk;
    }

    public final String zzb() {
        return zza(this.zzg.zzd);
    }

    public static void zzb(final Context context) {
        if (zzb != null || context == null) {
            return;
        }
        Object obj = zza;
        synchronized (obj) {
            try {
                if (zzb == null) {
                    synchronized (obj) {
                        try {
                            zzgu zzguVar = zzb;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (zzguVar == null || zzguVar.zza() != context) {
                                zzfy.zzc();
                                zzgw.zza();
                                zzgg.zza();
                                zzb = new zzfv(context, v.a(new u() { // from class: com.google.android.gms.internal.measurement.zzgp
                                    @Override // com.google.common.base.u
                                    public final Object get() {
                                        return zzgj.zza.zza(context);
                                    }
                                }));
                                zzf.incrementAndGet();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final T zza(zzgu zzguVar) {
        g<Context, Boolean> gVar;
        zzgv zzgvVar = this.zzg;
        if (!zzgvVar.zze && ((gVar = zzgvVar.zzh) == null || gVar.apply(zzguVar.zza()).booleanValue())) {
            zzgg zzggVarZza = zzgg.zza(zzguVar.zza());
            zzgv zzgvVar2 = this.zzg;
            Object objZza = zzggVarZza.zza(zzgvVar2.zze ? null : zza(zzgvVar2.zzc));
            if (objZza != null) {
                return zza(objZza);
            }
        }
        return null;
    }

    private final String zza(String str) {
        if (str != null && str.isEmpty()) {
            return this.zzh;
        }
        return str + this.zzh;
    }
}
