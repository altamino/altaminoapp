package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* loaded from: classes2.dex */
public final class zzcrp implements zzcva<zzcro> {
    private final zzawm zzbrw;
    private final zzcxv zzfjp;
    private final zzcva<zzcvf> zzggh;
    private final Context zzlj;

    public zzcrp(zzcsk<zzcvf> zzcskVar, zzcxv zzcxvVar, Context context, zzawm zzawmVar) {
        this.zzggh = zzcskVar;
        this.zzfjp = zzcxvVar;
        this.zzlj = context;
        this.zzbrw = zzawmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcro> zzalm() {
        return zzbar.zza(this.zzggh.zzalm(), new zzbam(this) { // from class: com.google.android.gms.internal.ads.zzcrq
            private final zzcrp zzggi;

            {
                this.zzggi = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                return this.zzggi.zza((zzcvf) obj);
            }
        }, zzbbm.zzeaf);
    }

    final /* synthetic */ zzcro zza(zzcvf zzcvfVar) {
        String str;
        boolean z;
        String strZzvx;
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        DisplayMetrics displayMetrics;
        zzyd zzydVar = this.zzfjp.zzdll;
        zzyd[] zzydVarArr = zzydVar.zzchg;
        if (zzydVarArr == null) {
            str = zzydVar.zzaap;
            z = zzydVar.zzchh;
        } else {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (zzyd zzydVar2 : zzydVarArr) {
                if (!zzydVar2.zzchh && !z2) {
                    str = zzydVar2.zzaap;
                    z2 = true;
                }
                if (zzydVar2.zzchh && !z3) {
                    z3 = true;
                    z = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
        }
        Resources resources = this.zzlj.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            strZzvx = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        } else {
            float f2 = displayMetrics.density;
            int i6 = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
            strZzvx = this.zzbrw.zzvc().zzvx();
            i = i6;
            f = f2;
        }
        StringBuilder sb = new StringBuilder();
        zzyd[] zzydVarArr2 = zzydVar.zzchg;
        if (zzydVarArr2 != null) {
            boolean z4 = false;
            for (zzyd zzydVar3 : zzydVarArr2) {
                if (zzydVar3.zzchh) {
                    z4 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    if (zzydVar3.width == -1 && f != 0.0f) {
                        i4 = (int) (zzydVar3.widthPixels / f);
                    } else {
                        i4 = zzydVar3.width;
                    }
                    sb.append(i4);
                    sb.append("x");
                    if (zzydVar3.height == -2 && f != 0.0f) {
                        i5 = (int) (zzydVar3.heightPixels / f);
                    } else {
                        i5 = zzydVar3.height;
                    }
                    sb.append(i5);
                }
            }
            if (z4) {
                if (sb.length() != 0) {
                    i3 = 0;
                    sb.insert(0, "|");
                } else {
                    i3 = 0;
                }
                sb.insert(i3, "320x50");
            }
        }
        return new zzcro(zzydVar, str, z, sb.toString(), f, i, i2, strZzvx);
    }
}
