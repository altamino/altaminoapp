package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbjn;
import com.google.android.gms.internal.ads.zzbkw;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public abstract class zzbjm implements zzblp {
    private static zzbjm zzeod;

    protected abstract zzcvs zza(zzcwx zzcwxVar);

    public abstract Executor zzace();

    public abstract zzbbl zzacf();

    public abstract zzbtb zzacg();

    public abstract zzclc zzach();

    public abstract zzbkz zzaci();

    public abstract zzbod zzacj();

    public abstract zzbwt zzack();

    public abstract zzbxp zzacl();

    public abstract zzcdg zzacm();

    public abstract zzcqp zzacn();

    public static zzbjm zza(Context context, zzamp zzampVar, int i) {
        zzbjm zzbjmVarZzd = zzd(context, i);
        zzbjmVarZzd.zzach().zzb(zzampVar);
        return zzbjmVarZzd;
    }

    @Deprecated
    public static zzbjm zzd(Context context, int i) {
        synchronized (zzbjm.class) {
            if (zzeod != null) {
                return zzeod;
            }
            return zza(new zzbai(15000000, i, true, false), context, new zzbkb());
        }
    }

    @Deprecated
    private static zzbjm zza(zzbai zzbaiVar, Context context, zzbkw.zza zzaVar) {
        zzbjm zzbjmVar;
        synchronized (zzbjm.class) {
            if (zzeod == null) {
                zzeod = new zzbkn().zzc(new zzbjn(new zzbjn.zza().zza(zzbaiVar).zzbo(context))).zza(new zzbkw(zzaVar)).zzaec();
                zzacu.initialize(context);
                com.google.android.gms.ads.internal.zzk.zzlk().zzd(context, zzbaiVar);
                com.google.android.gms.ads.internal.zzk.zzlm().initialize(context);
                com.google.android.gms.ads.internal.zzk.zzlg().zzak(context);
                com.google.android.gms.ads.internal.zzk.zzlg().zzal(context);
                zzawx.zzaj(context);
                com.google.android.gms.ads.internal.zzk.zzlj().initialize(context);
                com.google.android.gms.ads.internal.zzk.zzmb().initialize(context);
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue()) {
                    new zzcjr(context, zzbaiVar, new zzwj(new zzwo(context)), new zzcjc(new zzcja(context), zzeod.zzacf())).zzakp();
                }
            }
            zzbjmVar = zzeod;
        }
        return zzbjmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblp
    public final zzcvs zza(zzarx zzarxVar) {
        return zza(new zzcwx(zzarxVar));
    }
}
