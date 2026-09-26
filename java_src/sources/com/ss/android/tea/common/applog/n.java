package com.ss.android.tea.common.applog;

import android.annotation.TargetApi;
import android.os.Debug;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b f3148a = new c();

    private static class b {
        private b() {
        }

        public int a(Debug.MemoryInfo memoryInfo) {
            throw null;
        }

        public int b(Debug.MemoryInfo memoryInfo) {
            throw null;
        }

        public int c(Debug.MemoryInfo memoryInfo) {
            throw null;
        }
    }

    @TargetApi(19)
    private static class c extends b {
        private c() {
            super();
        }

        @Override // com.ss.android.tea.common.applog.n.b
        public int a(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override // com.ss.android.tea.common.applog.n.b
        public int b(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }

        @Override // com.ss.android.tea.common.applog.n.b
        public int c(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }
    }

    public static int a(Debug.MemoryInfo memoryInfo) {
        return f3148a.a(memoryInfo);
    }

    public static int b(Debug.MemoryInfo memoryInfo) {
        return f3148a.b(memoryInfo);
    }

    public static int c(Debug.MemoryInfo memoryInfo) {
        return f3148a.c(memoryInfo);
    }
}
