package com.google.android.play.core.splitcompat;

import android.content.Context;

/* loaded from: classes.dex */
final class n implements Runnable {
    private final /* synthetic */ Context a;

    n(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.play.core.splitinstall.l.a(this.a).a(true);
    }
}
