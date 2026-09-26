package pl.droidsonroids.gif;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes5.dex */
final class d extends ScheduledThreadPoolExecutor {

    private static final class b {
        private static final d INSTANCE = new d();
    }

    private d() {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }

    static d a() {
        return b.INSTANCE;
    }
}
