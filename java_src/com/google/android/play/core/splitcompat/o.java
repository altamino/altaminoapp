package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class o implements Runnable {
    private final /* synthetic */ Set a;
    private final /* synthetic */ SplitCompat b;

    o(SplitCompat splitCompat, Set set) {
        this.b = splitCompat;
        this.a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                this.b.b.f((String) it.next());
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e);
        }
    }
}
