package pl.droidsonroids.gif;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
public class h {
    static final String BASE_LIBRARY_NAME = "pl_droidsonroids_gif";
    static final String SURFACE_LIBRARY_NAME = "pl_droidsonroids_gif_surface";

    @SuppressLint({"StaticFieldLeak"})
    private static Context sAppContext;

    private static Context a() {
        if (sAppContext == null) {
            try {
                sAppContext = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e);
            }
        }
        return sAppContext;
    }

    static void b() {
        try {
            System.loadLibrary(BASE_LIBRARY_NAME);
        } catch (UnsatisfiedLinkError unused) {
            i.h(a());
        }
    }
}
