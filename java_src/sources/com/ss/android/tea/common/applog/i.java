package com.ss.android.tea.common.applog;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
class i implements com.bytedance.tea.common.utility.collection.b.a {
    private static i l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w f3130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f3131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f3132c;
    private boolean d;
    private final Object e;
    private int f;
    private volatile int g;
    private long h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f3133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f3134j;
    private long k;

    public void a() {
        this.f3132c = false;
        this.f3133i = System.currentTimeMillis();
    }

    public void b() {
        this.f3132c = true;
        if (this.d) {
            this.d = false;
            synchronized (this.e) {
                this.e.notify();
            }
        }
        if (this.k <= 0) {
            this.k = System.currentTimeMillis();
        }
    }

    @Override // com.bytedance.tea.common.utility.collection.b.a
    public void a(Message message) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (message != null && message.what == 1) {
            this.g = message.arg1;
            this.h = jCurrentTimeMillis;
        }
        long j6 = this.k;
        if ((j6 <= 0 || jCurrentTimeMillis - j6 > 60000) && !b.D0()) {
            this.f3132c = false;
            this.d = true;
        }
    }
}
