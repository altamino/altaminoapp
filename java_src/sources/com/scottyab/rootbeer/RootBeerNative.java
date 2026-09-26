package com.scottyab.rootbeer;

/* JADX INFO: loaded from: classes8.dex */
public class RootBeerNative {
    private static boolean libraryLoaded;

    public boolean a() {
        return libraryLoaded;
    }

    public native int checkForRoot(Object[] objArr);

    public native int setLogDebugMessages(boolean z6);

    static {
        try {
            System.loadLibrary("toolChecker");
            libraryLoaded = true;
        } catch (UnsatisfiedLinkError e) {
            c6.a.b(e);
        }
    }
}
