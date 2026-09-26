package com.google.android.datatransport.runtime;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
abstract class v implements Closeable {

    interface a {
        a a(Context context);

        v build();
    }

    abstract com.google.android.datatransport.runtime.scheduling.persistence.d d();

    abstract u h();

    v() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        d().close();
    }
}
