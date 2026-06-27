package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzalr {

    @VisibleForTesting
    private static final zzayp<zzajw> zzddl = new zzals();

    @VisibleForTesting
    private static final zzayp<zzajw> zzddm = new zzalt();
    private final zzakh zzddn;

    public zzalr(Context context, zzbai zzbaiVar, String str) {
        this.zzddn = new zzakh(context, zzbaiVar, str, zzddl, zzddm);
    }

    public final <I, O> zzalj<I, O> zza(String str, zzalm<I> zzalmVar, zzall<O> zzallVar) {
        return new zzalu(this.zzddn, str, zzalmVar, zzallVar);
    }

    public final zzaly zzsc() {
        return new zzaly(this.zzddn);
    }
}
