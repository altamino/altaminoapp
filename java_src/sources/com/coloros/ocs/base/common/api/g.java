package com.coloros.ocs.base.common.api;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f943a = g.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Looper f944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g1.b<T> f945c;
    private int d;
    private b<T> e;
    private a<T> f;
    private g<T>.c g;

    public interface a<T> {
        void a(g1.b<T> bVar, int i10, String str);
    }

    public interface b<T> {
        void a(g1.b<T> bVar);
    }

    class c extends d1.a {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                g.a(g.this, message.arg1);
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    public a<T> b() {
        return this.f;
    }

    public g1.b<T> c() {
        return this.f945c;
    }

    static /* synthetic */ void a(g gVar, int i10) {
        c1.a.e(gVar.f943a, "errorCode ".concat(String.valueOf(i10)));
        if (i10 == 0) {
            if (gVar.e != null) {
                c1.a.d(gVar.f943a, "notifier is not null ");
                gVar.e.a(gVar.f945c);
                return;
            }
            return;
        }
        a<T> aVar = gVar.f;
        if (aVar != null) {
            aVar.a(gVar.f945c, i10, e1.a.a(i10));
        }
    }

    public void d(int i10) {
        this.d = i10;
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.arg1 = this.d;
        this.g.sendMessage(messageObtain);
    }

    public g(Looper looper, g1.b<T> bVar, b<T> bVar2, a<T> aVar) {
        this.f944b = looper;
        this.f945c = bVar;
        this.e = bVar2;
        this.f = aVar;
        this.g = new c(this.f944b);
    }
}
