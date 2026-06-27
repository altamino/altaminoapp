package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.WeakHashMap;

@zzard
/* loaded from: classes2.dex */
public final class zztz {
    private final Object lock = new Object();
    private final WeakHashMap<Object, Object> zzbta = new WeakHashMap<>();
    private final ArrayList<Object> zzbtb = new ArrayList<>();
    private final zzbai zzbtc;
    private final zzakh zzbtd;
    private final Context zzys;

    public zztz(Context context, zzbai zzbaiVar) {
        this.zzys = context.getApplicationContext();
        this.zzbtc = zzbaiVar;
        this.zzbtd = new zzakh(context.getApplicationContext(), zzbaiVar, (String) zzyt.zzpe().zzd(zzacu.zzckw));
    }
}
