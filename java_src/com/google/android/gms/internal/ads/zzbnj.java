package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbnj implements zzdti<zzbnh> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbry> zzexa;
    private final zzdtu<zzbvd> zzext;
    private final zzdtu<zzbso> zzexw;
    private final zzdtu<zzcpm> zzfbc;
    private final zzdtu<zzcxu> zzfff;
    private final zzdtu<zzcxn> zzfhd;
    private final zzdtu<View> zzfhe;
    private final zzdtu<zzbgz> zzfhf;
    private final zzdtu<zzbpb> zzfhg;
    private final zzdtu<zzbzc> zzfhh;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxm> zzfhj;
    private final zzdtu<String> zzfhk;

    public zzbnj(zzdtu<Context> zzdtuVar, zzdtu<zzcxn> zzdtuVar2, zzdtu<View> zzdtuVar3, zzdtu<zzbgz> zzdtuVar4, zzdtu<zzbpb> zzdtuVar5, zzdtu<zzbzc> zzdtuVar6, zzdtu<zzbvd> zzdtuVar7, zzdtu<zzcpm> zzdtuVar8, zzdtu<Executor> zzdtuVar9, zzdtu<zzcxu> zzdtuVar10, zzdtu<zzcxm> zzdtuVar11, zzdtu<zzbry> zzdtuVar12, zzdtu<zzbso> zzdtuVar13, zzdtu<String> zzdtuVar14) {
        this.zzeoj = zzdtuVar;
        this.zzfhd = zzdtuVar2;
        this.zzfhe = zzdtuVar3;
        this.zzfhf = zzdtuVar4;
        this.zzfhg = zzdtuVar5;
        this.zzfhh = zzdtuVar6;
        this.zzext = zzdtuVar7;
        this.zzfbc = zzdtuVar8;
        this.zzfhi = zzdtuVar9;
        this.zzfff = zzdtuVar10;
        this.zzfhj = zzdtuVar11;
        this.zzexa = zzdtuVar12;
        this.zzexw = zzdtuVar13;
        this.zzfhk = zzdtuVar14;
    }

    public static zzbnh zza(Context context, zzcxn zzcxnVar, View view, zzbgz zzbgzVar, zzbpb zzbpbVar, zzbzc zzbzcVar, zzbvd zzbvdVar, zzdte<zzcpm> zzdteVar, Executor executor) {
        return new zzbnh(context, zzcxnVar, view, zzbgzVar, zzbpbVar, zzbzcVar, zzbvdVar, zzdteVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbnh zzbnhVar = new zzbnh(this.zzeoj.get(), this.zzfhd.get(), this.zzfhe.get(), this.zzfhf.get(), this.zzfhg.get(), this.zzfhh.get(), this.zzext.get(), zzdth.zzap(this.zzfbc), this.zzfhi.get());
        zzbql.zza(zzbnhVar, this.zzfff.get());
        zzbql.zza(zzbnhVar, this.zzfhj.get());
        zzbql.zza(zzbnhVar, this.zzexa.get());
        zzbql.zza(zzbnhVar, this.zzexw.get());
        zzbql.zza(zzbnhVar, this.zzfhk.get());
        return zzbnhVar;
    }
}
