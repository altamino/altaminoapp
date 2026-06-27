package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcre implements zzcva<zzcrd> {
    private final zzcxv zzfjp;
    private final zzbbl zzgfz;
    private final View zzgga;
    private final Context zzlj;

    public zzcre(zzbbl zzbblVar, Context context, zzcxv zzcxvVar, ViewGroup viewGroup) {
        this.zzgfz = zzbblVar;
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        this.zzgga = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcrd> zzalm() {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcnr)).booleanValue()) {
            return zzbar.zzd(new Exception("Ad Key signal disabled."));
        }
        return this.zzgfz.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcrf
            private final zzcre zzggb;

            {
                this.zzggb = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggb.zzaln();
            }
        });
    }

    final /* synthetic */ zzcrd zzaln() throws Exception {
        Context context = this.zzlj;
        zzyd zzydVar = this.zzfjp.zzdll;
        ArrayList arrayList = new ArrayList();
        View view = this.zzgga;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", iIndexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzcrd(context, zzydVar, arrayList);
    }
}
