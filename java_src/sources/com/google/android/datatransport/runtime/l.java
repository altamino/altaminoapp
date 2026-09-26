package com.google.android.datatransport.runtime;

import android.annotation.SuppressLint;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes9.dex */
public final class l {
    private static final String LOG_TAG = "ForcedSender";

    @SuppressLint({"DiscouragedApi"})
    @WorkerThread
    public static void a(f2.f<?> fVar, f2.d dVar) {
        if (!(fVar instanceof s)) {
            i2.a.g(LOG_TAG, "Expected instance of `TransportImpl`, got `%s`.", fVar);
        } else {
            u.c().e().u(((s) fVar).d().f(dVar), 1);
        }
    }
}
