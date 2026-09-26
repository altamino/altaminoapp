package com.coloros.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.coloros.ocs.base.common.AuthResult;
import com.coloros.ocs.base.common.api.a.c;

/* JADX INFO: loaded from: classes5.dex */
public class a<O extends c> {
    private AbstractC0148a<?, O> mClientBuilder;
    private f<?> mClientKey;
    private String mName;

    /* JADX INFO: renamed from: com.coloros.ocs.base.common.api.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0148a<T extends e, O> extends d<T, O> {
        public abstract T a(Context context, Looper looper, f1.a aVar, O o);
    }

    public static class b<C> {
    }

    public interface c {
    }

    public static abstract class d<T, O> {
        public static final int API_PRIORITY_GAMES = 1;
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        public static final int API_PRIORITY_PLUS = 2;
    }

    public interface e {
        void a();

        <T> void b(g<T> gVar);

        void c(com.coloros.ocs.base.common.api.f fVar, @Nullable Handler handler);

        void d(l lVar);

        void disconnect();

        AuthResult e();

        boolean isConnected();
    }

    public static class f<C extends e> extends b<C> {
    }

    public AbstractC0148a<?, O> a() {
        c1.b.b(this.mClientBuilder != null, "The ClientBuilder is null");
        return this.mClientBuilder;
    }

    public f<?> b() {
        f<?> fVar = this.mClientKey;
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalStateException("This API was constructed with null clientKey.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends e> a(String str, AbstractC0148a<C, O> abstractC0148a, f<C> fVar) {
        c1.b.a(abstractC0148a, "can not construct whit the null AbstractClientBuilder");
        c1.b.a(fVar, "can not construct with the null ClientKey");
        this.mName = str;
        this.mClientBuilder = abstractC0148a;
        this.mClientKey = fVar;
    }
}
