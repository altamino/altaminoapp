package com.coloros.ocs.mediaunit;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import com.coloros.ocs.base.common.api.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public final class e extends com.coloros.ocs.base.common.api.c<Object, e> {
    private static final com.coloros.ocs.base.common.api.a<Object> API;
    private static final String BIND_SERVICE_ACTION = "com.coloros.opencapabilityservice";
    private static final String BIND_SERVICE_NAME = "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService";
    private static final String BIND_SERVICE_PACKAGE_NAME = "com.coloros.ocs.opencapabilityservice";
    private static final com.coloros.ocs.base.common.api.a.AbstractC0148a<com.coloros.ocs.mediaunit.b, Object> CLIENT_BUILDER;
    private static final com.coloros.ocs.base.common.api.a.f<com.coloros.ocs.mediaunit.b> CLIENT_KEY;
    private static final String TAG = "MediaUnitClientImpl";
    private static e sMediaUnitClient;
    private ServiceConnection mConnection;
    private Context mContext;
    private final IBinder mICallBack;
    private com.coloros.ocs.mediaunit.a mService;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.this.mService = com.coloros.ocs.mediaunit.a.AbstractBinderC0150a.x1(iBinder);
            try {
                e.this.mService.N(e.this.mICallBack, e.this.mContext.getPackageName());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e.this.mService = null;
        }
    }

    class b implements g.b<Void> {
        b() {
        }

        @Override // com.coloros.ocs.base.common.api.g.b
        public void a(g1.b<Void> bVar) {
            if (e.this.mService == null) {
                e.this.l();
                return;
            }
            try {
                e.this.mService.N(e.this.mICallBack, e.this.mContext.getPackageName());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    class c implements g.a<Void> {
        c() {
        }

        @Override // com.coloros.ocs.base.common.api.g.a
        public void a(g1.b<Void> bVar, int i10, String str) {
            Log.e(e.TAG, "errorCode -- " + i10);
        }
    }

    class d implements g.b<Void> {
        d() {
        }

        @Override // com.coloros.ocs.base.common.api.g.b
        public void a(g1.b<Void> bVar) {
            if (e.this.mService != null) {
                try {
                    e.this.mService.x(e.this.mContext.getPackageName());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.coloros.ocs.mediaunit.e$e, reason: collision with other inner class name */
    class C0152e implements g.a<Void> {
        C0152e() {
        }

        @Override // com.coloros.ocs.base.common.api.g.a
        public void a(g1.b<Void> bVar, int i10, String str) {
            Log.e(e.TAG, "errorCode -- " + i10);
        }
    }

    protected void o() {
    }

    static {
        com.coloros.ocs.base.common.api.a.f<com.coloros.ocs.mediaunit.b> fVar = new com.coloros.ocs.base.common.api.a.f<>();
        CLIENT_KEY = fVar;
        com.coloros.ocs.mediaunit.c cVar = new com.coloros.ocs.mediaunit.c();
        CLIENT_BUILDER = cVar;
        API = new com.coloros.ocs.base.common.api.a<>("MediaClient.API", cVar, fVar);
    }

    private e(@NonNull Context context) {
        super(context, (com.coloros.ocs.base.common.api.a<com.coloros.ocs.base.common.api.a.c>) API, (com.coloros.ocs.base.common.api.a.c) null, new f1.a(context.getPackageName(), 1, new ArrayList()));
        this.mICallBack = new Binder();
        this.mContext = context;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.mConnection = new a();
        Intent intent = new Intent(BIND_SERVICE_ACTION);
        intent.setComponent(new ComponentName(BIND_SERVICE_PACKAGE_NAME, BIND_SERVICE_NAME));
        this.mContext.bindService(intent, this.mConnection, 1);
    }

    private static void m(@NonNull Context context) {
        sMediaUnitClient = new e(context);
    }

    private void n() {
        this.mContext.unbindService(this.mConnection);
    }

    protected static synchronized e p(@NonNull Context context) {
        e eVar = sMediaUnitClient;
        if (eVar != null) {
            return eVar;
        }
        m(context);
        return sMediaUnitClient;
    }

    public static void q() {
        sMediaUnitClient.n();
    }

    public int f() {
        c(Looper.myLooper(), new d(), new C0152e());
        return 0;
    }

    public int r() {
        Log.i(TAG, "requestAudioLoopback " + this.mICallBack);
        c(Looper.myLooper(), new b(), new c());
        return 0;
    }
}
