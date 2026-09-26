package com.coloros.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.coloros.ocs.base.common.AuthResult;
import com.coloros.ocs.base.common.CapabilityInfo;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b<T extends IBinder> implements com.coloros.ocs.base.common.api.a.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f932a = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f934c;
    CapabilityInfo d;
    l f;
    com.coloros.ocs.base.b h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Looper f935i;
    private h k;
    private boolean m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile int f933b = 4;
    b<T>.c e = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Queue<g> f936j = new LinkedList();
    i g = null;
    private int l = 3;
    private IBinder.DeathRecipient n = new C0149b();

    final class a extends com.coloros.ocs.base.a.AbstractBinderC0145a {
        a() {
        }

        @Override // com.coloros.ocs.base.a
        public final void H0(CapabilityInfo capabilityInfo) {
            c1.a.d(b.f932a, "thread authenticate success");
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = capabilityInfo;
            b.this.k.sendMessage(messageObtain);
        }

        @Override // com.coloros.ocs.base.a
        public final void r(int i10) {
            c1.a.e(b.f932a, "errorCode ".concat(String.valueOf(i10)));
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = i10;
            b.this.k.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.coloros.ocs.base.common.api.b$b, reason: collision with other inner class name */
    final class C0149b implements IBinder.DeathRecipient {
        C0149b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            c1.a.f(b.f932a, "binderDied()");
            b.w(b.this);
            if (b.this.h != null && b.this.h.asBinder() != null && b.this.h.asBinder().isBinderAlive()) {
                b.this.h.asBinder().unlinkToDeath(b.this.n, 0);
                b.this.h = null;
            }
            if (b.this.m && b.this.d != null) {
                b.u(b.this);
                b.this.a();
            }
        }
    }

    class c implements ServiceConnection {
        private c() {
        }

        /* synthetic */ c(b bVar, byte b7) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            c1.a.d(b.f932a, "onServiceConnected");
            b.this.h = com.coloros.ocs.base.b.a.x1(iBinder);
            try {
                b.this.h.asBinder().linkToDeath(b.this.n, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            if (b.this.d == null) {
                c1.a.d(b.f932a, "handle authenticate");
                b.this.k.sendEmptyMessage(3);
            } else {
                c1.a.d(b.f932a, "handle reconnect");
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                b.this.k.sendMessage(messageObtain);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            c1.a.f(b.f932a, "onServiceDisconnected()");
            b.u(b.this);
            b.w(b.this);
            b.this.h = null;
        }
    }

    static /* synthetic */ c w(b bVar) {
        bVar.e = null;
        return null;
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    @RequiresApi
    public void a() {
        m(true);
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public void d(l lVar) {
        this.f = lVar;
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public boolean isConnected() {
        return this.f933b == 1 || this.f933b == 5;
    }

    public abstract String z();

    private void k(g gVar) {
        CapabilityInfo capabilityInfo = this.d;
        if (capabilityInfo == null || capabilityInfo.c() == null) {
            return;
        }
        if (this.d.c().c() == 1001) {
            gVar.d(0);
        } else {
            gVar.d(this.d.c().c());
        }
    }

    private void l(g gVar, boolean z6) {
        c1.a.d(f932a, "add taskListenerHolder to queue,but whether is connect ".concat(String.valueOf(z6)));
        this.f936j.add(gVar);
        if (z6) {
            m(true);
        }
    }

    private void m(boolean z6) {
        if (z6) {
            this.l = 3;
        }
        String str = f932a;
        c1.a.d(str, "connect");
        this.f933b = 2;
        this.e = new c(this, (byte) 0);
        boolean zBindService = this.f934c.getApplicationContext().bindService(v(), this.e, 1);
        c1.a.e(str, "connect state ".concat(String.valueOf(zBindService)));
        if (zBindService) {
            return;
        }
        x();
    }

    static CapabilityInfo o(int i10) {
        return new CapabilityInfo(new ArrayList(), 1, new AuthResult("", 0, 0, i10, new byte[0]));
    }

    static /* synthetic */ int u(b bVar) {
        bVar.f933b = 13;
        return 13;
    }

    @RequiresApi
    private static Intent v() {
        Intent intent = new Intent("com.coloros.opencapabilityservice");
        c1.a.c(f932a, "packageName = ".concat("com.coloros.ocs.opencapabilityservice"));
        intent.setComponent(new ComponentName("com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"));
        return intent;
    }

    private void x() {
        c1.a.e(f932a, "retry");
        int i10 = this.l;
        if (i10 != 0) {
            this.l = i10 - 1;
            m(false);
            return;
        }
        this.d = o(3);
        i(3);
        l lVar = this.f;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public void c(f fVar, @Nullable Handler handler) {
        CapabilityInfo capabilityInfo = this.d;
        if (capabilityInfo == null || capabilityInfo.c() == null || this.d.c().c() != 1001) {
            j(handler);
            this.g.f948a = fVar;
        } else if (fVar != null) {
            fVar.onConnectionSucceed();
        }
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public void disconnect() {
        if (this.e != null) {
            c1.a.e(f932a, "disconnect service.");
            this.d = null;
            this.f934c.getApplicationContext().unbindService(this.e);
            this.f933b = 4;
        }
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public AuthResult e() {
        return this.d.c();
    }

    final void h() {
        b<T>.c cVar;
        if (this.m || (cVar = this.e) == null || cVar == null) {
            return;
        }
        c1.a.d(f932a, "disconnect service.");
        this.f934c.getApplicationContext().unbindService(this.e);
        this.f933b = 5;
        if (this.m) {
            return;
        }
        this.h = null;
    }

    final void i(int i10) {
        c1.a.d(f932a, "handleAuthenticateFailure");
        if (this.g == null) {
            j(null);
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 101;
        messageObtain.arg1 = i10;
        this.g.sendMessage(messageObtain);
    }

    final void j(@Nullable Handler handler) {
        i iVar = this.g;
        if (iVar == null) {
            if (handler == null) {
                this.g = new i(this.f935i, this.k);
                return;
            } else {
                this.g = new i(handler.getLooper(), this.k);
                return;
            }
        }
        if (handler == null || iVar.getLooper() == handler.getLooper()) {
            return;
        }
        c1.a.d(f932a, "the new handler looper is not the same as the old one.");
    }

    final void p() {
        while (this.f936j.size() > 0) {
            c1.a.d(f932a, "handleQue");
            k(this.f936j.poll());
        }
        c1.a.d(f932a, "task queue is end");
    }

    final void r() {
        c1.a.d(f932a, "onReconnectSucceed");
        this.f933b = 1;
        try {
            this.d.e(this.h.b0(z(), "1.0.1"));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        p();
        h();
    }

    protected b(Context context, Looper looper) {
        String strZ;
        if (context != null) {
            this.f934c = context;
            if (looper != null) {
                this.f935i = looper;
                this.k = h.a(this);
                String str = f932a;
                StringBuilder sb = new StringBuilder("build client, ");
                if (z() == null) {
                    strZ = "";
                } else {
                    strZ = z();
                }
                sb.append(strZ);
                c1.a.d(str, sb.toString());
                return;
            }
            throw new NullPointerException("Looper must not be null");
        }
        throw new NullPointerException("null reference");
    }

    @Override // com.coloros.ocs.base.common.api.a.e
    public <T> void b(g<T> gVar) {
        if (isConnected()) {
            if (this.m) {
                com.coloros.ocs.base.b bVar = this.h;
                if (bVar != null && bVar.asBinder() != null && this.h.asBinder().isBinderAlive()) {
                    k(gVar);
                    return;
                } else {
                    l(gVar, true);
                    return;
                }
            }
            k(gVar);
            return;
        }
        if (this.f933b == 13) {
            l(gVar, true);
        } else {
            l(gVar, false);
        }
    }
}
