package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f1421a = this;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.m f1422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.m f1423c;
    private final com.google.android.play.integrity.internal.m d;
    private final com.google.android.play.integrity.internal.m e;

    public final a a() {
        return (a) this.e.a();
    }

    /* synthetic */ v(Context context, u uVar) {
        com.google.android.play.integrity.internal.j jVarB = com.google.android.play.integrity.internal.k.b(context);
        this.f1422b = jVarB;
        com.google.android.play.integrity.internal.m mVarB = com.google.android.play.integrity.internal.i.b(b0.f1396a);
        this.f1423c = mVarB;
        com.google.android.play.integrity.internal.m mVarB2 = com.google.android.play.integrity.internal.i.b(new m(jVarB, mVarB));
        this.d = mVarB2;
        this.e = com.google.android.play.integrity.internal.i.b(new a0(mVarB2));
    }
}
