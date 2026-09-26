package g2;

import android.content.Context;

/* JADX INFO: loaded from: classes11.dex */
public final class j implements com.google.android.datatransport.runtime.dagger.internal.b<i> {
    private final v7.a<Context> applicationContextProvider;
    private final v7.a<m2.a> monotonicClockProvider;
    private final v7.a<m2.a> wallClockProvider;

    public static j a(v7.a<Context> aVar, v7.a<m2.a> aVar2, v7.a<m2.a> aVar3) {
        return new j(aVar, aVar2, aVar3);
    }

    public static i c(Context context, m2.a aVar, m2.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public i get() {
        return c(this.applicationContextProvider.get(), this.wallClockProvider.get(), this.monotonicClockProvider.get());
    }

    public j(v7.a<Context> aVar, v7.a<m2.a> aVar2, v7.a<m2.a> aVar3) {
        this.applicationContextProvider = aVar;
        this.wallClockProvider = aVar2;
        this.monotonicClockProvider = aVar3;
    }
}
