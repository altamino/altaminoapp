package com.ss.android.tea.common.applog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Message;
import androidx.media3.datasource.cache.CacheDataSink;
import com.bytedance.tea.common.utility.Logger;
import com.narvii.livelayer.LiveLayerService;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class b0 implements com.bytedance.tea.common.utility.collection.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f3117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f3118c;
    private long[] d;
    private long[] e;
    private long[] f;
    private long g;
    private long h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f3120j;

    public interface a {
        void a(b bVar);
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f3122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3123c;
        public long d;
        public long e;
        public long f;
        public boolean g;

        b() {
        }

        public String toString() {
            return "TrafficWarningInfo (tx:: " + this.f3121a + ", cost: " + this.f3122b + ", last: " + this.f3123c + ", current:" + this.d + ", lastTime:" + this.e + ", initTime:" + this.f + ", isAccumulate:" + this.g + ")";
        }
    }

    public void a() {
        this.f3117b.sendEmptyMessage(3);
    }

    private void b(long[] jArr) {
        int i10;
        if (jArr == null || jArr.length < 2) {
            return;
        }
        try {
            jArr[0] = -1;
            jArr[1] = -1;
            ApplicationInfo applicationInfo = this.f3116a.getApplicationInfo();
            if (applicationInfo != null && (i10 = applicationInfo.uid) >= 1) {
                jArr[0] = TrafficStats.getUidTxBytes(i10);
                jArr[1] = TrafficStats.getUidRxBytes(applicationInfo.uid);
            }
        } catch (Throwable unused) {
        }
    }

    private void d() {
        long[] jArr = this.d;
        b(jArr);
        if (Logger.debug()) {
            Logger.d("TrafficGuard", "check traffic: " + this.f3119i + " " + jArr[0] + " " + jArr[1] + " " + new Date().toString());
        }
        this.h = System.currentTimeMillis();
        int i10 = 0;
        while (i10 < 2) {
            long j6 = jArr[i10];
            if (j6 >= 0) {
                long j10 = this.e[i10];
                if (j10 >= 0) {
                    long j11 = j6 - j10;
                    if (j11 > CacheDataSink.DEFAULT_FRAGMENT_SIZE) {
                        b bVar = new b();
                        bVar.f3121a = i10 == 0;
                        bVar.f3122b = j11;
                        bVar.f3123c = this.e[i10];
                        bVar.d = j6;
                        bVar.e = this.h;
                        bVar.f = this.g;
                        bVar.g = false;
                        a aVar = this.f3118c;
                        if (aVar != null) {
                            aVar.a(bVar);
                        }
                    }
                }
                this.e[i10] = j6;
                long[] jArr2 = this.f;
                long j12 = jArr2[i10];
                if (j12 >= 0) {
                    long j13 = j6 - j12;
                    if (j13 > 20971520) {
                        b bVar2 = new b();
                        bVar2.f3121a = i10 == 0;
                        bVar2.f3122b = j13;
                        bVar2.f3123c = this.f[i10];
                        bVar2.d = j6;
                        bVar2.e = this.h;
                        bVar2.f = this.g;
                        bVar2.g = true;
                        a aVar2 = this.f3118c;
                        if (aVar2 != null) {
                            aVar2.a(bVar2);
                        }
                    }
                } else {
                    jArr2[i10] = j6;
                }
            }
            i10++;
        }
        if (this.f3119i <= 0) {
            this.f3119i = 0;
        }
        if (this.f3120j <= 0) {
            this.f3120j = 300000L;
        }
        int i11 = this.f3119i + 1;
        this.f3119i = i11;
        if (i11 > 0 && i11 <= 5) {
            this.f3120j *= 2;
        }
        this.f3117b.sendEmptyMessageDelayed(1, this.f3120j);
    }

    @Override // com.bytedance.tea.common.utility.collection.b.a
    public void a(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            try {
                d();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return;
            }
            this.f3117b.removeMessages(1);
            this.f3117b.removeMessages(2);
            this.f3119i = 0;
            this.f3120j = 0L;
            return;
        }
        this.f3117b.removeMessages(1);
        this.f3117b.removeMessages(3);
        this.f3119i = 0;
        this.f3120j = 300000L;
        b(this.f);
        long[] jArr = this.e;
        long[] jArr2 = this.f;
        jArr[0] = jArr2[0];
        jArr[1] = jArr2[1];
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.g = jCurrentTimeMillis;
        this.h = jCurrentTimeMillis;
        this.f3117b.sendEmptyMessageDelayed(1, 300000L);
        if (Logger.debug()) {
            Logger.d("TrafficGuard", "init check traffic: " + this.f3119i + " " + this.f[0] + " " + this.f[1] + " " + new Date().toString());
        }
    }

    public void c() {
        this.f3117b.removeMessages(2);
        this.f3117b.sendEmptyMessageDelayed(2, LiveLayerService.REFRESH_INTERVAL);
    }
}
