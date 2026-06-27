package com.google.android.play.core.internal;

import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
final class ad implements Runnable {
    private final /* synthetic */ List a;
    private final /* synthetic */ com.google.android.play.core.splitinstall.f b;
    private final /* synthetic */ ab c;

    ad(ab abVar, List list, com.google.android.play.core.splitinstall.f fVar) {
        this.c = abVar;
        this.a = list;
        this.b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.c.c.a(this.a)) {
                this.c.a(this.b);
            } else {
                this.c.b(this.a, this.b);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Error checking verified files.", e);
            this.b.a(-11);
        }
    }
}
