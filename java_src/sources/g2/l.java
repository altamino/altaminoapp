package g2;

import android.content.Context;

/* JADX INFO: loaded from: classes11.dex */
public final class l implements com.google.android.datatransport.runtime.dagger.internal.b<k> {
    private final v7.a<Context> applicationContextProvider;
    private final v7.a<i> creationContextFactoryProvider;

    public static l a(v7.a<Context> aVar, v7.a<i> aVar2) {
        return new l(aVar, aVar2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public k get() {
        return c(this.applicationContextProvider.get(), this.creationContextFactoryProvider.get());
    }

    public l(v7.a<Context> aVar, v7.a<i> aVar2) {
        this.applicationContextProvider = aVar;
        this.creationContextFactoryProvider = aVar2;
    }
}
