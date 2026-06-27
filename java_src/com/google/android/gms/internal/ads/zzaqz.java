package com.google.android.gms.internal.ads;

import java.lang.Thread;

/* loaded from: classes2.dex */
final class zzaqz implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzaqx zzdlf;
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzdlg;

    zzaqz(zzaqx zzaqxVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdlf = zzaqxVar;
        this.zzdlg = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.zzdlf.zza(thread, th);
            } finally {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzdlg;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        } catch (Throwable unused) {
            zzbad.zzen("AdMob exception reporter failed reporting the exception.");
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zzdlg;
            if (uncaughtExceptionHandler2 != null) {
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            }
        }
    }
}
