package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
final class t implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1420a;

    /* synthetic */ t(s sVar) {
    }

    @Override // com.google.android.play.core.integrity.w
    public final v b() {
        com.google.android.play.integrity.internal.l.a(this.f1420a, Context.class);
        return new v(this.f1420a, null);
    }

    public final t a(Context context) {
        context.getClass();
        this.f1420a = context;
        return this;
    }
}
