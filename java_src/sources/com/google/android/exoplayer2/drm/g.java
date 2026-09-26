package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.analytics.t1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
class g implements n {
    private static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    private static final String TAG = "DefaultDrmSession";
    final m0 callback;

    @Nullable
    private com.google.android.exoplayer2.decoder.b cryptoConfig;

    @Nullable
    private f0.b currentKeyRequest;

    @Nullable
    private f0.e currentProvisionRequest;
    private final com.google.android.exoplayer2.util.i<v.a> eventDispatchers;
    private final boolean isPlaceholderSession;
    private final HashMap<String, String> keyRequestParameters;

    @Nullable
    private n.a lastException;
    private final com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
    private final f0 mediaDrm;
    private final int mode;
    private byte[] offlineLicenseKeySetId;
    private final boolean playClearSamplesWithoutKeys;
    private final t1 playerId;
    private final a provisioningManager;
    private int referenceCount;
    private final b referenceCountListener;

    @Nullable
    private c requestHandler;

    @Nullable
    private HandlerThread requestHandlerThread;
    final e responseHandler;

    @Nullable
    public final List<DrmInitData.SchemeData> schemeDatas;

    @Nullable
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    public interface a {
        void a(Exception exc, boolean z6);

        void b(g gVar);

        void onProvisionCompleted();
    }

    public interface b {
        void a(g gVar, int i10);

        void b(g gVar, int i10);
    }

    @SuppressLint({"HandlerLeak"})
    private class c extends Handler {

        @GuardedBy
        private boolean isReleased;

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.isReleased = true;
        }

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, n0 n0Var) {
            d dVar = (d) message.obj;
            if (!dVar.allowRetry) {
                return false;
            }
            int i10 = dVar.errorCount + 1;
            dVar.errorCount = i10;
            if (i10 > g.this.loadErrorHandlingPolicy.b(3)) {
                return false;
            }
            long jC = g.this.loadErrorHandlingPolicy.c(new com.google.android.exoplayer2.upstream.f0.a(new com.google.android.exoplayer2.source.u(dVar.taskId, n0Var.dataSpec, n0Var.uriAfterRedirects, n0Var.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.startTimeMs, n0Var.bytesLoaded), new com.google.android.exoplayer2.source.x(3), n0Var.getCause() instanceof IOException ? (IOException) n0Var.getCause() : new f(n0Var.getCause()), dVar.errorCount));
            if (jC == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.isReleased) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), jC);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void b(int i10, Object obj, boolean z6) {
            obtainMessage(i10, new d(com.google.android.exoplayer2.source.u.a(), z6, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objB;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 == 0) {
                    g gVar = g.this;
                    objB = gVar.callback.b(gVar.uuid, (f0.e) dVar.request);
                } else {
                    if (i10 != 1) {
                        throw new RuntimeException();
                    }
                    g gVar2 = g.this;
                    objB = gVar2.callback.a(gVar2.uuid, (f0.b) dVar.request);
                }
            } catch (n0 e) {
                boolean zA = a(message, e);
                objB = e;
                if (zA) {
                    return;
                }
            } catch (Exception e2) {
                com.google.android.exoplayer2.util.t.j(g.TAG, "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                objB = e2;
            }
            g.this.loadErrorHandlingPolicy.a(dVar.taskId);
            synchronized (this) {
                try {
                    if (!this.isReleased) {
                        g.this.responseHandler.obtainMessage(message.what, Pair.create(dVar.request, objB)).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 0) {
                g.this.z(obj, obj2);
            } else {
                if (i10 != 1) {
                    return;
                }
                g.this.t(obj, obj2);
            }
        }
    }

    private void B(byte[] bArr, int i10, boolean z6) {
        try {
            this.currentKeyRequest = this.mediaDrm.e(bArr, this.schemeDatas, i10, this.keyRequestParameters);
            ((c) com.google.android.exoplayer2.util.o0.j(this.requestHandler)).b(1, com.google.android.exoplayer2.util.a.e(this.currentKeyRequest), z6);
        } catch (Exception e2) {
            u(e2, true);
        }
    }

    private boolean D() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e2) {
            s(e2, 1);
            return false;
        }
    }

    private boolean p() {
        int i10 = this.state;
        return i10 == 3 || i10 == 4;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public boolean a() {
        return this.playClearSamplesWithoutKeys;
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public final com.google.android.exoplayer2.decoder.b b() {
        return this.cryptoConfig;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public final UUID c() {
        return this.uuid;
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public final n.a getError() {
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.n
    public final int getState() {
        return this.state;
    }

    public void w(int i10) {
        if (i10 != 2) {
            return;
        }
        v();
    }

    private static final class d {
        public final boolean allowRetry;
        public int errorCount;
        public final Object request;
        public final long startTimeMs;
        public final long taskId;

        public d(long j6, boolean z6, long j10, Object obj) {
            this.taskId = j6;
            this.allowRetry = z6;
            this.startTimeMs = j10;
            this.request = obj;
        }
    }

    public static final class f extends IOException {
        public f(@Nullable Throwable th) {
            super(th);
        }
    }

    private void l(com.google.android.exoplayer2.util.h<v.a> hVar) {
        Iterator<v.a> it = this.eventDispatchers.o().iterator();
        while (it.hasNext()) {
            hVar.accept(it.next());
        }
    }

    private void m(boolean z6) {
        if (this.isPlaceholderSession) {
            return;
        }
        byte[] bArr = (byte[]) com.google.android.exoplayer2.util.o0.j(this.sessionId);
        int i10 = this.mode;
        if (i10 != 0 && i10 != 1) {
            if (i10 == 2) {
                if (this.offlineLicenseKeySetId == null || D()) {
                    B(bArr, 2, z6);
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
            com.google.android.exoplayer2.util.a.e(this.offlineLicenseKeySetId);
            com.google.android.exoplayer2.util.a.e(this.sessionId);
            B(this.offlineLicenseKeySetId, 3, z6);
            return;
        }
        if (this.offlineLicenseKeySetId == null) {
            B(bArr, 1, z6);
            return;
        }
        if (this.state == 4 || D()) {
            long jN = n();
            if (this.mode != 0 || jN > 60) {
                if (jN <= 0) {
                    s(new l0(), 2);
                    return;
                } else {
                    this.state = 4;
                    l(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.f
                        @Override // com.google.android.exoplayer2.util.h
                        public final void accept(Object obj) {
                            ((v.a) obj).j();
                        }
                    });
                    return;
                }
            }
            com.google.android.exoplayer2.util.t.b(TAG, "Offline license has expired or will expire soon. Remaining seconds: " + jN);
            B(bArr, 2, z6);
        }
    }

    private long n() {
        if (!com.google.android.exoplayer2.i.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) com.google.android.exoplayer2.util.a.e(p0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private void s(final Exception exc, int i10) {
        this.lastException = new n.a(exc, b0.a(exc, i10));
        com.google.android.exoplayer2.util.t.d(TAG, "DRM session error", exc);
        l(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.e
            @Override // com.google.android.exoplayer2.util.h
            public final void accept(Object obj) {
                ((v.a) obj).l(exc);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Object obj, Object obj2) {
        if (obj == this.currentKeyRequest && p()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                u((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse((byte[]) com.google.android.exoplayer2.util.o0.j(this.offlineLicenseKeySetId), bArr);
                    l(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.b
                        @Override // com.google.android.exoplayer2.util.h
                        public final void accept(Object obj3) {
                            ((v.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                int i10 = this.mode;
                if ((i10 == 2 || (i10 == 0 && this.offlineLicenseKeySetId != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.offlineLicenseKeySetId = bArrProvideKeyResponse;
                }
                this.state = 4;
                l(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.c
                    @Override // com.google.android.exoplayer2.util.h
                    public final void accept(Object obj3) {
                        ((v.a) obj3).h();
                    }
                });
            } catch (Exception e2) {
                u(e2, true);
            }
        }
    }

    private void u(Exception exc, boolean z6) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.b(this);
        } else {
            s(exc, z6 ? 1 : 2);
        }
    }

    private void v() {
        if (this.mode == 0 && this.state == 4) {
            com.google.android.exoplayer2.util.o0.j(this.sessionId);
            m(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Object obj, Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || p()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof Exception) {
                    this.provisioningManager.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (Exception e2) {
                    this.provisioningManager.a(e2, true);
                }
            }
        }
    }

    public void C() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        ((c) com.google.android.exoplayer2.util.o0.j(this.requestHandler)).b(0, com.google.android.exoplayer2.util.a.e(this.currentProvisionRequest), true);
    }

    @Override // com.google.android.exoplayer2.drm.n
    public boolean d(String str) {
        return this.mediaDrm.d((byte[]) com.google.android.exoplayer2.util.a.i(this.sessionId), str);
    }

    @Override // com.google.android.exoplayer2.drm.n
    public void e(@Nullable v.a aVar) {
        int i10 = this.referenceCount;
        if (i10 <= 0) {
            com.google.android.exoplayer2.util.t.c(TAG, "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.referenceCount = i11;
        if (i11 == 0) {
            this.state = 0;
            ((e) com.google.android.exoplayer2.util.o0.j(this.responseHandler)).removeCallbacksAndMessages(null);
            ((c) com.google.android.exoplayer2.util.o0.j(this.requestHandler)).c();
            this.requestHandler = null;
            ((HandlerThread) com.google.android.exoplayer2.util.o0.j(this.requestHandlerThread)).quit();
            this.requestHandlerThread = null;
            this.cryptoConfig = null;
            this.lastException = null;
            this.currentKeyRequest = null;
            this.currentProvisionRequest = null;
            byte[] bArr = this.sessionId;
            if (bArr != null) {
                this.mediaDrm.closeSession(bArr);
                this.sessionId = null;
            }
        }
        if (aVar != null) {
            this.eventDispatchers.c(aVar);
            if (this.eventDispatchers.b(aVar) == 0) {
                aVar.m();
            }
        }
        this.referenceCountListener.a(this, this.referenceCount);
    }

    @Override // com.google.android.exoplayer2.drm.n
    public void f(@Nullable v.a aVar) {
        if (this.referenceCount < 0) {
            com.google.android.exoplayer2.util.t.c(TAG, "Session reference count less than zero: " + this.referenceCount);
            this.referenceCount = 0;
        }
        if (aVar != null) {
            this.eventDispatchers.a(aVar);
        }
        int i10 = this.referenceCount + 1;
        this.referenceCount = i10;
        if (i10 == 1) {
            com.google.android.exoplayer2.util.a.g(this.state == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.requestHandlerThread = handlerThread;
            handlerThread.start();
            this.requestHandler = new c(this.requestHandlerThread.getLooper());
            if (A()) {
                m(true);
            }
        } else if (aVar != null && p() && this.eventDispatchers.b(aVar) == 1) {
            aVar.k(this.state);
        }
        this.referenceCountListener.b(this, this.referenceCount);
    }

    public boolean o(byte[] bArr) {
        return Arrays.equals(this.sessionId, bArr);
    }

    @Override // com.google.android.exoplayer2.drm.n
    @Nullable
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    public void y(Exception exc, boolean z6) {
        s(exc, z6 ? 1 : 3);
    }

    public g(UUID uuid, f0 f0Var, a aVar, b bVar, @Nullable List<DrmInitData.SchemeData> list, int i10, boolean z6, boolean z10, @Nullable byte[] bArr, HashMap<String, String> map, m0 m0Var, Looper looper, com.google.android.exoplayer2.upstream.f0 f0Var2, t1 t1Var) {
        if (i10 == 1 || i10 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.uuid = uuid;
        this.provisioningManager = aVar;
        this.referenceCountListener = bVar;
        this.mediaDrm = f0Var;
        this.mode = i10;
        this.playClearSamplesWithoutKeys = z6;
        this.isPlaceholderSession = z10;
        if (bArr != null) {
            this.offlineLicenseKeySetId = bArr;
            this.schemeDatas = null;
        } else {
            this.schemeDatas = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.e(list));
        }
        this.keyRequestParameters = map;
        this.callback = m0Var;
        this.eventDispatchers = new com.google.android.exoplayer2.util.i<>();
        this.loadErrorHandlingPolicy = f0Var2;
        this.playerId = t1Var;
        this.state = 2;
        this.responseHandler = new e(looper);
    }

    private boolean A() {
        if (p()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.mediaDrm.openSession();
            this.sessionId = bArrOpenSession;
            this.mediaDrm.g(bArrOpenSession, this.playerId);
            this.cryptoConfig = this.mediaDrm.c(this.sessionId);
            final int i10 = 3;
            this.state = 3;
            l(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.d
                @Override // com.google.android.exoplayer2.util.h
                public final void accept(Object obj) {
                    ((v.a) obj).k(i10);
                }
            });
            com.google.android.exoplayer2.util.a.e(this.sessionId);
            return true;
        } catch (NotProvisionedException unused) {
            this.provisioningManager.b(this);
            return false;
        } catch (Exception e2) {
            s(e2, 1);
            return false;
        }
    }

    public void x() {
        if (A()) {
            m(true);
        }
    }
}
