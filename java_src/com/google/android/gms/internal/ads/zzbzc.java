package com.google.android.gms.internal.ads;

import android.support.v4.util.SimpleArrayMap;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzbzc {
    public static final zzbzc zzfpd = new zzbze().zzaip();
    private final zzafl zzfow;
    private final zzafi zzfox;
    private final zzafx zzfoy;
    private final zzafu zzfoz;
    private final zzaje zzfpa;
    private final SimpleArrayMap<String, zzafr> zzfpb;
    private final SimpleArrayMap<String, zzafo> zzfpc;

    public final zzafl zzaii() {
        return this.zzfow;
    }

    public final zzafi zzaij() {
        return this.zzfox;
    }

    public final zzafx zzaik() {
        return this.zzfoy;
    }

    public final zzafu zzail() {
        return this.zzfoz;
    }

    public final zzaje zzaim() {
        return this.zzfpa;
    }

    public final zzafr zzfn(String str) {
        return this.zzfpb.get(str);
    }

    public final zzafo zzfo(String str) {
        return this.zzfpc.get(str);
    }

    public final ArrayList<String> zzain() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.zzfoy != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzfow != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzfox != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.zzfpb.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzfpa != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzaio() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzfpb.size());
        for (int i = 0; i < this.zzfpb.size(); i++) {
            arrayList.add(this.zzfpb.keyAt(i));
        }
        return arrayList;
    }

    private zzbzc(zzbze zzbzeVar) {
        this.zzfow = zzbzeVar.zzfow;
        this.zzfox = zzbzeVar.zzfox;
        this.zzfoy = zzbzeVar.zzfoy;
        this.zzfpb = new SimpleArrayMap<>(zzbzeVar.zzfpb);
        this.zzfpc = new SimpleArrayMap<>(zzbzeVar.zzfpc);
        this.zzfoz = zzbzeVar.zzfoz;
        this.zzfpa = zzbzeVar.zzfpa;
    }
}
