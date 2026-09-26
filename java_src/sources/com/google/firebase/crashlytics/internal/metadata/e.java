package com.google.firebase.crashlytics.internal.metadata;

import androidx.annotation.Nullable;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class e {
    private static final String LOGFILE_NAME = "userlog";
    static final int MAX_LOG_SIZE = 65536;
    private static final b NOOP_LOG_STORE = new b();
    private c currentLog;
    private final e4.f fileStore;

    private static final class b implements c {
        private b() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.c
        public byte[] a() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.c
        public void b() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.c
        public void c(long j6, String str) {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.c
        public void d() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.c
        public String e() {
            return null;
        }
    }

    public e(e4.f fVar) {
        this.fileStore = fVar;
        this.currentLog = NOOP_LOG_STORE;
    }

    public e(e4.f fVar, String str) {
        this(fVar);
        e(str);
    }

    private File d(String str) {
        return this.fileStore.o(str, LOGFILE_NAME);
    }

    public void a() {
        this.currentLog.b();
    }

    public byte[] b() {
        return this.currentLog.a();
    }

    @Nullable
    public String c() {
        return this.currentLog.e();
    }

    public final void e(String str) {
        this.currentLog.d();
        this.currentLog = NOOP_LOG_STORE;
        if (str == null) {
            return;
        }
        f(d(str), 65536);
    }

    void f(File file, int i10) {
        this.currentLog = new h(file, i10);
    }

    public void g(long j6, String str) {
        this.currentLog.c(j6, str);
    }
}
