package com.google.android.play.core.splitcompat;

import android.util.Log;

/* loaded from: classes.dex */
final class m implements Runnable {
    private final /* synthetic */ SplitCompat a;

    m(SplitCompat splitCompat) {
        this.a = splitCompat;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.b.a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e);
        }
    }
}
