package androidx.media3.exoplayer.drm;

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
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.CopyOnWriteMultiset;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
class DefaultDrmSession implements DrmSession {
    private static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    private static final String TAG = "DefaultDrmSession";
    private final MediaDrmCallback callback;

    @Nullable
    private CryptoConfig cryptoConfig;

    @Nullable
    private ExoMediaDrm.KeyRequest currentKeyRequest;

    @Nullable
    private ExoMediaDrm.ProvisionRequest currentProvisionRequest;
    private final CopyOnWriteMultiset<DrmSessionEventListener.EventDispatcher> eventDispatchers;
    private final boolean isPlaceholderSession;
    private final HashMap<String, String> keyRequestParameters;

    @Nullable
    private DrmSession.DrmSessionException lastException;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final ExoMediaDrm mediaDrm;
    private final int mode;
    private byte[] offlineLicenseKeySetId;
    private final boolean playClearSamplesWithoutKeys;
    private final Looper playbackLooper;
    private final PlayerId playerId;
    private final ProvisioningManager provisioningManager;
    private int referenceCount;
    private final ReferenceCountListener referenceCountListener;

    @Nullable
    private RequestHandler requestHandler;

    @Nullable
    private HandlerThread requestHandlerThread;
    private final ResponseHandler responseHandler;

    @Nullable
    public final List<DrmInitData.SchemeData> schemeDatas;

    @Nullable
    private byte[] sessionId;
    private int state;
    private final UUID uuid;

    public interface ProvisioningManager {
        void a(Exception exc, boolean z6);

        void b(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();
    }

    public interface ReferenceCountListener {
        void a(DefaultDrmSession defaultDrmSession, int i10);

        void b(DefaultDrmSession defaultDrmSession, int i10);
    }

    @SuppressLint({"HandlerLeak"})
    private class RequestHandler extends Handler {

        @GuardedBy
        private boolean isReleased;

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.isReleased = true;
        }

        public RequestHandler(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            RequestTask requestTask = (RequestTask) message.obj;
            if (!requestTask.allowRetry) {
                return false;
            }
            int i10 = requestTask.errorCount + 1;
            requestTask.errorCount = i10;
            if (i10 > DefaultDrmSession.this.loadErrorHandlingPolicy.b(3)) {
                return false;
            }
            long jD = DefaultDrmSession.this.loadErrorHandlingPolicy.d(new LoadErrorHandlingPolicy.LoadErrorInfo(new LoadEventInfo(requestTask.taskId, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - requestTask.startTimeMs, mediaDrmCallbackException.bytesLoaded), new MediaLoadData(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), requestTask.errorCount));
            if (jD == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.isReleased) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), jD);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void b(int i10, Object obj, boolean z6) {
            obtainMessage(i10, new RequestTask(LoadEventInfo.a(), z6, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objB;
            RequestTask requestTask = (RequestTask) message.obj;
            try {
                int i10 = message.what;
                if (i10 == 0) {
                    objB = DefaultDrmSession.this.callback.b(DefaultDrmSession.this.uuid, (ExoMediaDrm.ProvisionRequest) requestTask.request);
                } else {
                    if (i10 != 1) {
                        throw new RuntimeException();
                    }
                    objB = DefaultDrmSession.this.callback.a(DefaultDrmSession.this.uuid, (ExoMediaDrm.KeyRequest) requestTask.request);
                }
            } catch (MediaDrmCallbackException e) {
                boolean zA = a(message, e);
                objB = e;
                if (zA) {
                    return;
                }
            } catch (Exception e2) {
                Log.j(DefaultDrmSession.TAG, "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                objB = e2;
            }
            DefaultDrmSession.this.loadErrorHandlingPolicy.a(requestTask.taskId);
            synchronized (this) {
                try {
                    if (!this.isReleased) {
                        DefaultDrmSession.this.responseHandler.obtainMessage(message.what, Pair.create(requestTask.request, objB)).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class ResponseHandler extends Handler {
        public ResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 0) {
                DefaultDrmSession.this.C(obj, obj2);
            } else {
                if (i10 != 1) {
                    return;
                }
                DefaultDrmSession.this.w(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm exoMediaDrm, ProvisioningManager provisioningManager, ReferenceCountListener referenceCountListener, @Nullable List<DrmInitData.SchemeData> list, int i10, boolean z6, boolean z10, @Nullable byte[] bArr, HashMap<String, String> map, MediaDrmCallback mediaDrmCallback, Looper looper, LoadErrorHandlingPolicy loadErrorHandlingPolicy, PlayerId playerId) {
        if (i10 == 1 || i10 == 3) {
            Assertions.e(bArr);
        }
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.referenceCountListener = referenceCountListener;
        this.mediaDrm = exoMediaDrm;
        this.mode = i10;
        this.playClearSamplesWithoutKeys = z6;
        this.isPlaceholderSession = z10;
        if (bArr != null) {
            this.offlineLicenseKeySetId = bArr;
            this.schemeDatas = null;
        } else {
            this.schemeDatas = Collections.unmodifiableList((List) Assertions.e(list));
        }
        this.keyRequestParameters = map;
        this.callback = mediaDrmCallback;
        this.eventDispatchers = new CopyOnWriteMultiset<>();
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playerId = playerId;
        this.state = 2;
        this.playbackLooper = looper;
        this.responseHandler = new ResponseHandler(looper);
    }

    private void E(byte[] bArr, int i10, boolean z6) {
        try {
            this.currentKeyRequest = this.mediaDrm.e(bArr, this.schemeDatas, i10, this.keyRequestParameters);
            ((RequestHandler) Util.j(this.requestHandler)).b(1, Assertions.e(this.currentKeyRequest), z6);
        } catch (Exception e) {
            x(e, true);
        }
    }

    private boolean G() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e) {
            v(e, 1);
            return false;
        }
    }

    private boolean s() {
        int i10 = this.state;
        return i10 == 3 || i10 == 4;
    }

    void z(int i10) {
        if (i10 != 2) {
            return;
        }
        y();
    }

    private static final class RequestTask {
        public final boolean allowRetry;
        public int errorCount;
        public final Object request;
        public final long startTimeMs;
        public final long taskId;

        public RequestTask(long j6, boolean z6, long j10, Object obj) {
            this.taskId = j6;
            this.allowRetry = z6;
            this.startTimeMs = j10;
            this.request = obj;
        }
    }

    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Object obj, Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || s()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof Exception) {
                    this.provisioningManager.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (Exception e) {
                    this.provisioningManager.a(e, true);
                }
            }
        }
    }

    private void o(Consumer<DrmSessionEventListener.EventDispatcher> consumer) {
        Iterator<DrmSessionEventListener.EventDispatcher> it = this.eventDispatchers.o().iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    private void p(boolean z6) {
        if (this.isPlaceholderSession) {
            return;
        }
        byte[] bArr = (byte[]) Util.j(this.sessionId);
        int i10 = this.mode;
        if (i10 != 0 && i10 != 1) {
            if (i10 == 2) {
                if (this.offlineLicenseKeySetId == null || G()) {
                    E(bArr, 2, z6);
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
            Assertions.e(this.offlineLicenseKeySetId);
            Assertions.e(this.sessionId);
            E(this.offlineLicenseKeySetId, 3, z6);
            return;
        }
        if (this.offlineLicenseKeySetId == null) {
            E(bArr, 1, z6);
            return;
        }
        if (this.state == 4 || G()) {
            long jQ = q();
            if (this.mode != 0 || jQ > 60) {
                if (jQ <= 0) {
                    v(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.state = 4;
                    o(new Consumer() { // from class: androidx.media3.exoplayer.drm.c
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj) {
                            ((DrmSessionEventListener.EventDispatcher) obj).j();
                        }
                    });
                    return;
                }
            }
            Log.b(TAG, "Offline license has expired or will expire soon. Remaining seconds: " + jQ);
            E(bArr, 2, z6);
        }
    }

    private long q() {
        if (!C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) Assertions.e(WidevineUtil.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private void v(final Exception exc, int i10) {
        this.lastException = new DrmSession.DrmSessionException(exc, DrmUtil.a(exc, i10));
        Log.d(TAG, "DRM session error", exc);
        o(new Consumer() { // from class: androidx.media3.exoplayer.drm.a
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((DrmSessionEventListener.EventDispatcher) obj).l(exc);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Object obj, Object obj2) {
        if (obj == this.currentKeyRequest && s()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                x((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse((byte[]) Util.j(this.offlineLicenseKeySetId), bArr);
                    o(new Consumer() { // from class: androidx.media3.exoplayer.drm.d
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj3) {
                            ((DrmSessionEventListener.EventDispatcher) obj3).i();
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
                o(new Consumer() { // from class: androidx.media3.exoplayer.drm.e
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj3) {
                        ((DrmSessionEventListener.EventDispatcher) obj3).h();
                    }
                });
            } catch (Exception e) {
                x(e, true);
            }
        }
    }

    private void x(Exception exc, boolean z6) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.b(this);
        } else {
            v(exc, z6 ? 1 : 2);
        }
    }

    private void y() {
        if (this.mode == 0 && this.state == 4) {
            Util.j(this.sessionId);
            p(false);
        }
    }

    void B(Exception exc, boolean z6) {
        v(exc, z6 ? 1 : 3);
    }

    void F() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        ((RequestHandler) Util.j(this.requestHandler)).b(0, Assertions.e(this.currentProvisionRequest), true);
    }

    private boolean D() {
        if (s()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.mediaDrm.openSession();
            this.sessionId = bArrOpenSession;
            this.mediaDrm.f(bArrOpenSession, this.playerId);
            this.cryptoConfig = this.mediaDrm.c(this.sessionId);
            final int i10 = 3;
            this.state = 3;
            o(new Consumer() { // from class: androidx.media3.exoplayer.drm.b
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((DrmSessionEventListener.EventDispatcher) obj).k(i10);
                }
            });
            Assertions.e(this.sessionId);
            return true;
        } catch (NotProvisionedException unused) {
            this.provisioningManager.b(this);
            return false;
        } catch (Exception e) {
            v(e, 1);
            return false;
        }
    }

    private void H() {
        if (Thread.currentThread() != this.playbackLooper.getThread()) {
            Log.j(TAG, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.playbackLooper.getThread().getName(), new IllegalStateException());
        }
    }

    void A() {
        if (D()) {
            p(true);
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean a() {
        H();
        return this.playClearSamplesWithoutKeys;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public final CryptoConfig b() {
        H();
        return this.cryptoConfig;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID c() {
        H();
        return this.uuid;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        H();
        return this.mediaDrm.d((byte[]) Assertions.i(this.sessionId), str);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void e(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        H();
        int i10 = this.referenceCount;
        if (i10 <= 0) {
            Log.c(TAG, "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.referenceCount = i11;
        if (i11 == 0) {
            this.state = 0;
            ((ResponseHandler) Util.j(this.responseHandler)).removeCallbacksAndMessages(null);
            ((RequestHandler) Util.j(this.requestHandler)).c();
            this.requestHandler = null;
            ((HandlerThread) Util.j(this.requestHandlerThread)).quit();
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
        if (eventDispatcher != null) {
            this.eventDispatchers.c(eventDispatcher);
            if (this.eventDispatchers.b(eventDispatcher) == 0) {
                eventDispatcher.m();
            }
        }
        this.referenceCountListener.b(this, this.referenceCount);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void f(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        H();
        boolean z6 = false;
        if (this.referenceCount < 0) {
            Log.c(TAG, "Session reference count less than zero: " + this.referenceCount);
            this.referenceCount = 0;
        }
        if (eventDispatcher != null) {
            this.eventDispatchers.a(eventDispatcher);
        }
        int i10 = this.referenceCount + 1;
        this.referenceCount = i10;
        if (i10 == 1) {
            if (this.state == 2) {
                z6 = true;
            }
            Assertions.g(z6);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.requestHandlerThread = handlerThread;
            handlerThread.start();
            this.requestHandler = new RequestHandler(this.requestHandlerThread.getLooper());
            if (D()) {
                p(true);
            }
        } else if (eventDispatcher != null && s() && this.eventDispatchers.b(eventDispatcher) == 1) {
            eventDispatcher.k(this.state);
        }
        this.referenceCountListener.a(this, this.referenceCount);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException getError() {
        H();
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final int getState() {
        H();
        return this.state;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        H();
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    public boolean r(byte[] bArr) {
        H();
        return Arrays.equals(this.sessionId, bArr);
    }
}
