package g2;

import android.content.Context;

/* JADX INFO: loaded from: classes11.dex */
class i {
    private final Context applicationContext;
    private final m2.a monotonicClock;
    private final m2.a wallClock;

    h a(String str) {
        return h.a(this.applicationContext, this.wallClock, this.monotonicClock, str);
    }

    i(Context context, m2.a aVar, m2.a aVar2) {
        this.applicationContext = context;
        this.wallClock = aVar;
        this.monotonicClock = aVar2;
    }
}
