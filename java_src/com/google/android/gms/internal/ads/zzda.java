package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzbi;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* loaded from: classes2.dex */
public class zzda {
    private static final ConditionVariable zzve = new ConditionVariable();
    protected static volatile zzwo zzvf = null;
    private static volatile Random zzvh = null;
    private zzdy zzvd;
    protected volatile Boolean zzvg;

    public zzda(zzdy zzdyVar) {
        this.zzvd = zzdyVar;
        zzdyVar.zzch().execute(new zzdb(this));
    }

    public final void zza(int i, int i2, long j) {
        zza(i, i2, j, null);
    }

    public final void zza(int i, int i2, long j, Exception exc) {
        try {
            zzve.block();
            if (!this.zzvg.booleanValue() || zzvf == null) {
                return;
            }
            zzbi.zza.C0005zza c0005zzaZzd = zzbi.zza.zzs().zzl(this.zzvd.zzlj.getPackageName()).zzd(j);
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                zzdmb.zza(exc, new PrintWriter(stringWriter));
                c0005zzaZzd.zzm(stringWriter.toString()).zzn(exc.getClass().getName());
            }
            zzws zzwsVarZzg = zzvf.zzg(((zzbi.zza) ((zzdob) c0005zzaZzd.zzaya())).toByteArray());
            zzwsVarZzg.zzby(i);
            if (i2 != -1) {
                zzwsVarZzg.zzbx(i2);
            }
            zzwsVarZzg.zzdj();
        } catch (Exception unused) {
        }
    }

    public static int zzcd() {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                return ThreadLocalRandom.current().nextInt();
            }
            return zzce().nextInt();
        } catch (RuntimeException unused) {
            return zzce().nextInt();
        }
    }

    private static Random zzce() {
        if (zzvh == null) {
            synchronized (zzda.class) {
                if (zzvh == null) {
                    zzvh = new Random();
                }
            }
        }
        return zzvh;
    }
}
