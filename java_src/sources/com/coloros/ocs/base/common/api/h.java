package com.coloros.ocs.base.common.api;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.coloros.ocs.base.common.CapabilityInfo;

/* JADX INFO: loaded from: classes5.dex */
class h extends d1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f947b;

    static h a(b bVar) {
        HandlerThread handlerThread = new HandlerThread("base_client");
        handlerThread.start();
        return new h(handlerThread.getLooper(), bVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        c1.a.d(this.f946a, "base client handler what ".concat(String.valueOf(i10)));
        if (i10 == 1) {
            b bVar = this.f947b;
            CapabilityInfo capabilityInfo = (CapabilityInfo) message.obj;
            String str = b.f932a;
            c1.a.e(str, "onAuthenticateSucceed");
            bVar.f933b = 1;
            bVar.d = capabilityInfo;
            c1.a.d(str, "handleAuthenticateSuccess");
            if (bVar.g == null) {
                bVar.j(null);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            bVar.g.sendMessage(messageObtain);
            bVar.h();
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 == 4) {
                    this.f947b.r();
                    return;
                } else {
                    if (i10 != 5) {
                        return;
                    }
                    this.f947b.p();
                    return;
                }
            }
            b bVar2 = this.f947b;
            com.coloros.ocs.base.b bVar3 = bVar2.h;
            if (bVar3 == null || bVar3.asBinder() == null || !bVar2.h.asBinder().isBinderAlive()) {
                return;
            }
            try {
                c1.a.d(b.f932a, "thread handle authenticate");
                bVar2.h.H(bVar2.z(), "1.0.1", new b.a());
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                c1.a.f(b.f932a, "the exception that service broker authenticates is " + e.getMessage());
                return;
            }
        }
        b bVar4 = this.f947b;
        int i11 = message.arg1;
        String str2 = b.f932a;
        c1.a.d(str2, "onFailed time");
        if (bVar4.e != null) {
            bVar4.f934c.getApplicationContext().unbindService(bVar4.e);
            bVar4.h = null;
        }
        bVar4.f933b = 4;
        bVar4.d = b.o(i11);
        c1.a.d(str2, "connect failed , error code is ".concat(String.valueOf(i11)));
        if (i11 == 1002 || i11 == 1003 || i11 == 1004 || i11 == 1005 || i11 == 1006 || i11 == 1007 || i11 == 1008) {
            bVar4.i(i11);
            l lVar = bVar4.f;
            if (lVar != null) {
                lVar.a();
            }
        }
    }

    private h(Looper looper, b bVar) {
        super(looper);
        this.f946a = h.class.getSimpleName();
        this.f947b = bVar;
    }
}
