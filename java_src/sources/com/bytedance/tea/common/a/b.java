package com.bytedance.tea.common.a;

import android.annotation.TargetApi;
import android.app.ActivityManager;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final a f898a = new C0141b();

    private static class a {
        private a() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    /* JADX INFO: renamed from: com.bytedance.tea.common.a.b$b, reason: collision with other inner class name */
    @TargetApi(16)
    private static class C0141b extends a {
        private C0141b() {
            super();
        }

        @Override // com.bytedance.tea.common.a.b.a
        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f898a.a(memoryInfo);
    }
}
