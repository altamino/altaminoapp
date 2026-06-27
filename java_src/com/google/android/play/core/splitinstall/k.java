package com.google.android.play.core.splitinstall;

/* loaded from: classes2.dex */
final class k implements Runnable {
    private final /* synthetic */ SplitInstallSessionState a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;
    private final /* synthetic */ l d;

    k(l lVar, SplitInstallSessionState splitInstallSessionState, int i, int i2) {
        this.d = lVar;
        this.a = splitInstallSessionState;
        this.b = i;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.a((l) this.a.a(this.b, this.c));
    }
}
