package com.coloros.ocs.base.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.coloros.ocs.base.common.api.a.c;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
class j<O extends com.coloros.ocs.base.common.api.a.c> implements Handler.Callback {
    private static volatile j d;
    private static Map<com.coloros.ocs.base.common.api.a.f, d> e = new ConcurrentHashMap();
    private static Map<com.coloros.ocs.base.common.api.a.f, d> f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d1.a f951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Looper f953c;

    final class a implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f955b;

        a(c cVar, d dVar) {
            this.f954a = cVar;
            this.f955b = dVar;
        }

        @Override // com.coloros.ocs.base.common.api.l
        public final void a() {
            j.d(this.f954a.d().b());
            j.f.put(this.f954a.d().b(), this.f955b);
        }
    }

    final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f957a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Looper looper, f fVar) {
            super(looper);
            this.f957a = fVar;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            this.f957a.onConnectionSucceed();
        }
    }

    public static j b(Context context) {
        if (d == null) {
            synchronized (j.class) {
                try {
                    if (d == null) {
                        HandlerThread handlerThread = new HandlerThread("ColorApiManager", 9);
                        handlerThread.start();
                        d = new j(context, handlerThread.getLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    static void d(com.coloros.ocs.base.common.api.a.f fVar) {
        e.remove(fVar);
    }

    static <T> void f(c cVar, g<T> gVar) {
        d dVar;
        c1.a.d("ColorApiManager", "addQueue " + cVar.getClass().getSimpleName());
        c1.b.a(cVar, "colorApi not be null");
        if (e.containsKey(cVar.d().b())) {
            d dVar2 = e.get(cVar.d().b());
            if (dVar2 != null) {
                dVar2.b(gVar);
                return;
            }
            return;
        }
        if (!f.containsKey(cVar.d().b()) || (dVar = f.get(cVar.d().b())) == null || gVar.b() == null) {
            return;
        }
        int iA = a(dVar);
        gVar.b().a(gVar.c(), iA, e1.a.a(iA));
    }

    static void h(com.coloros.ocs.base.common.api.a.f fVar) {
        f.remove(fVar);
    }

    static boolean i(c cVar) {
        d dVar;
        c1.b.a(cVar, "colorApi not be null");
        if (!e.containsKey(cVar.d().b()) || (dVar = e.get(cVar.d().b())) == null) {
            return false;
        }
        return dVar.isConnected();
    }

    final void e(c cVar, f fVar, @Nullable Handler handler) {
        d dVar;
        c1.b.a(cVar, "colorApi not be null");
        if (!e.containsKey(cVar.d().b()) || (dVar = e.get(cVar.d().b())) == null) {
            return;
        }
        if (cVar.e()) {
            new b(handler == null ? Looper.getMainLooper() : handler.getLooper(), fVar).sendEmptyMessage(0);
        } else {
            dVar.c(fVar, handler);
        }
    }

    final void g(c cVar, f1.a aVar) {
        c1.b.a(cVar, "colorApi not be null");
        c1.b.a(aVar, "clientsettings not be null");
        if (e.containsKey(cVar.d().b())) {
            return;
        }
        c1.a.d("ColorApiManager", "addColorClient");
        k kVar = new k(this.f952b, cVar.d(), null, aVar);
        kVar.d(new a(cVar, kVar));
        c1.a.c("TAG", "getClientKey " + cVar.d().b());
        e.put(cVar.d().b(), kVar);
        c1.a.d("ColorApiManager", "handlerConnect");
        Message messageObtainMessage = this.f951a.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.obj = cVar;
        this.f951a.sendMessage(messageObtainMessage);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        d dVar;
        c cVar;
        d dVar2;
        c1.a.d("ColorApiManager", "handle message " + message.what);
        int i10 = message.what;
        if (i10 == 0) {
            c1.a.d("ColorApiManager", "handle connect");
            c cVar2 = (c) message.obj;
            if (cVar2 == null || cVar2.d().b() == null || (dVar = e.get(cVar2.d().b())) == null) {
                return false;
            }
            c1.a.c("ColorApiManager", "colorApiClient is not null,will connect");
            dVar.a();
            return false;
        }
        if (i10 != 1 || (cVar = (c) message.obj) == null || cVar.d().b() == null || (dVar2 = e.get(cVar.d().b())) == null) {
            return false;
        }
        c1.a.c("ColorApiManager", "colorApiClient is not null,will disconnect");
        dVar2.disconnect();
        d(cVar.d().b());
        h(cVar.d().b());
        return false;
    }

    private j(Context context, Looper looper) {
        this.f952b = context.getApplicationContext();
        this.f953c = looper;
        this.f951a = new d1.a(this.f953c, this);
    }

    private static int a(@NonNull d dVar) {
        if (dVar.e() != null) {
            return dVar.e().c();
        }
        return -1;
    }
}
