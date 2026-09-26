package androidx.media3.exoplayer;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h2 {
    public static void a(RendererCapabilities rendererCapabilities) {
    }

    public static void b(RendererCapabilities rendererCapabilities, RendererCapabilities.Listener listener) {
    }

    public static int c(int i10) {
        return d(i10, 0, 0);
    }

    public static int d(int i10, int i11, int i12) {
        return e(i10, i11, i12, 0, 128);
    }

    @SuppressLint({"WrongConstant"})
    public static int e(int i10, int i11, int i12, int i13, int i14) {
        return i10 | i11 | i12 | i13 | i14;
    }

    @SuppressLint({"WrongConstant"})
    public static int f(int i10) {
        return i10 & 24;
    }

    @SuppressLint({"WrongConstant"})
    public static int g(int i10) {
        return i10 & 384;
    }

    @SuppressLint({"WrongConstant"})
    public static int h(int i10) {
        return i10 & 7;
    }

    @SuppressLint({"WrongConstant"})
    public static int i(int i10) {
        return i10 & 64;
    }

    @SuppressLint({"WrongConstant"})
    public static int j(int i10) {
        return i10 & 32;
    }
}
