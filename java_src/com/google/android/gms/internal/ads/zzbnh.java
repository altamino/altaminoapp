package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzbnh extends zzbnf {
    private final View view;
    private final zzbgz zzdbs;
    private final Executor zzffv;
    private final zzcxn zzfgx;
    private final zzbpb zzfgy;
    private final zzbzc zzfgz;
    private final zzbvd zzfha;
    private final zzdte<zzcpm> zzfhb;
    private final Context zzlj;

    zzbnh(Context context, zzcxn zzcxnVar, View view, zzbgz zzbgzVar, zzbpb zzbpbVar, zzbzc zzbzcVar, zzbvd zzbvdVar, zzdte<zzcpm> zzdteVar, Executor executor) {
        this.zzlj = context;
        this.view = view;
        this.zzdbs = zzbgzVar;
        this.zzfgx = zzcxnVar;
        this.zzfgy = zzbpbVar;
        this.zzfgz = zzbzcVar;
        this.zzfha = zzbvdVar;
        this.zzfhb = zzdteVar;
        this.zzffv = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final View zzafi() {
        return this.view;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zza(ViewGroup viewGroup, zzyd zzydVar) {
        zzbgz zzbgzVar;
        if (viewGroup == null || (zzbgzVar = this.zzdbs) == null) {
            return;
        }
        zzbgzVar.zza(zzbin.zzb(zzydVar));
        viewGroup.setMinimumHeight(zzydVar.heightPixels);
        viewGroup.setMinimumWidth(zzydVar.widthPixels);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzaar getVideoController() {
        try {
            return this.zzfgy.getVideoController();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzcxn zzafj() {
        return this.zzfig.zzgkd.get(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final int zzafk() {
        return this.zzffa.zzgky.zzgku.zzgkr;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzpm() {
        this.zzfha.zzagx();
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzafl() {
        this.zzffv.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbni
            private final zzbnh zzfhc;

            {
                this.zzfhc = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfhc.zzafm();
            }
        });
        super.zzafl();
    }

    final /* synthetic */ void zzafm() {
        if (this.zzfgz.zzail() != null) {
            try {
                this.zzfgz.zzail().zza(this.zzfhb.get(), ObjectWrapper.wrap(this.zzlj));
            } catch (RemoteException e) {
                zzbad.zzc("RemoteException when notifyAdLoad is called", e);
            }
        }
    }
}
