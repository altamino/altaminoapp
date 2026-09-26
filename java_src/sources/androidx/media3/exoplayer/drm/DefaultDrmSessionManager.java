package androidx.media3.exoplayer.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.collect.a0;
import com.google.common.collect.d0;
import com.google.common.collect.f1;
import com.google.common.collect.l1;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
@UnstableApi
public class DefaultDrmSessionManager implements DrmSessionManager {
    public static final long DEFAULT_SESSION_KEEPALIVE_MS = 300000;
    public static final int INITIAL_DRM_REQUEST_RETRY_COUNT = 3;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    private static final String TAG = "DefaultDrmSessionMgr";
    private final MediaDrmCallback callback;

    @Nullable
    private ExoMediaDrm exoMediaDrm;
    private final ExoMediaDrm.Provider exoMediaDrmProvider;
    private final Set<DefaultDrmSession> keepaliveSessions;
    private final HashMap<String, String> keyRequestParameters;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;

    @Nullable
    volatile MediaDrmHandler mediaDrmHandler;
    private int mode;
    private final boolean multiSession;

    @Nullable
    private DefaultDrmSession noMultiSessionDrmSession;

    @Nullable
    private byte[] offlineLicenseKeySetId;

    @Nullable
    private DefaultDrmSession placeholderDrmSession;
    private final boolean playClearSamplesWithoutKeys;
    private Handler playbackHandler;
    private Looper playbackLooper;
    private PlayerId playerId;
    private final Set<PreacquiredSessionReference> preacquiredSessionReferences;
    private int prepareCallsCount;
    private final ProvisioningManagerImpl provisioningManagerImpl;
    private final ReferenceCountListenerImpl referenceCountListener;
    private final long sessionKeepaliveMs;
    private final List<DefaultDrmSession> sessions;
    private final int[] useDrmSessionsForClearContentTrackTypes;
    private final UUID uuid;

    public static final class Builder {
        private boolean multiSession;
        private boolean playClearSamplesWithoutKeys;
        private final HashMap<String, String> keyRequestParameters = new HashMap<>();
        private UUID uuid = C.WIDEVINE_UUID;
        private ExoMediaDrm.Provider exoMediaDrmProvider = FrameworkMediaDrm.DEFAULT_PROVIDER;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        private int[] useDrmSessionsForClearContentTrackTypes = new int[0];
        private long sessionKeepaliveMs = 300000;

        public Builder b(boolean z6) {
            this.multiSession = z6;
            return this;
        }

        public Builder c(boolean z6) {
            this.playClearSamplesWithoutKeys = z6;
            return this;
        }

        public Builder d(int... iArr) {
            for (int i10 : iArr) {
                boolean z6 = true;
                if (i10 != 2 && i10 != 1) {
                    z6 = false;
                }
                Assertions.a(z6);
            }
            this.useDrmSessionsForClearContentTrackTypes = (int[]) iArr.clone();
            return this;
        }

        public DefaultDrmSessionManager a(MediaDrmCallback mediaDrmCallback) {
            return new DefaultDrmSessionManager(this.uuid, this.exoMediaDrmProvider, mediaDrmCallback, this.keyRequestParameters, this.multiSession, this.useDrmSessionsForClearContentTrackTypes, this.playClearSamplesWithoutKeys, this.loadErrorHandlingPolicy, this.sessionKeepaliveMs);
        }

        public Builder e(UUID uuid, ExoMediaDrm.Provider provider) {
            this.uuid = (UUID) Assertions.e(uuid);
            this.exoMediaDrmProvider = (ExoMediaDrm.Provider) Assertions.e(provider);
            return this;
        }
    }

    private class MediaDrmEventListener implements ExoMediaDrm.OnEventListener {
        private MediaDrmEventListener() {
        }

        @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.OnEventListener
        public void a(ExoMediaDrm exoMediaDrm, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
            ((MediaDrmHandler) Assertions.e(DefaultDrmSessionManager.this.mediaDrmHandler)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.sessions) {
                if (defaultDrmSession.r(bArr)) {
                    defaultDrmSession.z(message.what);
                    return;
                }
            }
        }
    }

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PreacquiredSessionReference implements DrmSessionManager.DrmSessionReference {

        @Nullable
        private final DrmSessionEventListener.EventDispatcher eventDispatcher;
        private boolean isReleased;

        @Nullable
        private DrmSession session;

        public PreacquiredSessionReference(DrmSessionEventListener.EventDispatcher eventDispatcher) {
            this.eventDispatcher = eventDispatcher;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Format format) {
            if (DefaultDrmSessionManager.this.prepareCallsCount == 0 || this.isReleased) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.session = defaultDrmSessionManager.s((Looper) Assertions.e(defaultDrmSessionManager.playbackLooper), this.eventDispatcher, format, false);
            DefaultDrmSessionManager.this.preacquiredSessionReferences.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.isReleased) {
                return;
            }
            DrmSession drmSession = this.session;
            if (drmSession != null) {
                drmSession.e(this.eventDispatcher);
            }
            DefaultDrmSessionManager.this.preacquiredSessionReferences.remove(this);
            this.isReleased = true;
        }

        public void c(final Format format) {
            ((Handler) Assertions.e(DefaultDrmSessionManager.this.playbackHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.drm.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f497a.d(format);
                }
            });
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
        public void release() {
            Util.T0((Handler) Assertions.e(DefaultDrmSessionManager.this.playbackHandler), new Runnable() { // from class: androidx.media3.exoplayer.drm.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f496a.e();
                }
            });
        }
    }

    private class ProvisioningManagerImpl implements DefaultDrmSession.ProvisioningManager {

        @Nullable
        private DefaultDrmSession provisioningSession;
        private final Set<DefaultDrmSession> sessionsAwaitingProvisioning = new HashSet();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public void a(Exception exc, boolean z6) {
            this.provisioningSession = null;
            a0 a0VarT = a0.t(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            l1 it = a0VarT.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).B(exc, z6);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public void onProvisionCompleted() {
            this.provisioningSession = null;
            a0 a0VarT = a0.t(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            l1 it = a0VarT.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).A();
            }
        }

        public ProvisioningManagerImpl() {
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public void b(DefaultDrmSession defaultDrmSession) {
            this.sessionsAwaitingProvisioning.add(defaultDrmSession);
            if (this.provisioningSession != null) {
                return;
            }
            this.provisioningSession = defaultDrmSession;
            defaultDrmSession.F();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.sessionsAwaitingProvisioning.remove(defaultDrmSession);
            if (this.provisioningSession == defaultDrmSession) {
                this.provisioningSession = null;
                if (this.sessionsAwaitingProvisioning.isEmpty()) {
                    return;
                }
                DefaultDrmSession next = this.sessionsAwaitingProvisioning.iterator().next();
                this.provisioningSession = next;
                next.F();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ReferenceCountListenerImpl implements DefaultDrmSession.ReferenceCountListener {
        private ReferenceCountListenerImpl() {
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ReferenceCountListener
        public void b(final DefaultDrmSession defaultDrmSession, int i10) {
            if (i10 == 1 && DefaultDrmSessionManager.this.prepareCallsCount > 0 && DefaultDrmSessionManager.this.sessionKeepaliveMs != -9223372036854775807L) {
                DefaultDrmSessionManager.this.keepaliveSessions.add(defaultDrmSession);
                ((Handler) Assertions.e(DefaultDrmSessionManager.this.playbackHandler)).postAtTime(new Runnable() { // from class: androidx.media3.exoplayer.drm.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        defaultDrmSession.e(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.sessionKeepaliveMs);
            } else if (i10 == 0) {
                DefaultDrmSessionManager.this.sessions.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.placeholderDrmSession == defaultDrmSession) {
                    DefaultDrmSessionManager.this.placeholderDrmSession = null;
                }
                if (DefaultDrmSessionManager.this.noMultiSessionDrmSession == defaultDrmSession) {
                    DefaultDrmSessionManager.this.noMultiSessionDrmSession = null;
                }
                DefaultDrmSessionManager.this.provisioningManagerImpl.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.sessionKeepaliveMs != -9223372036854775807L) {
                    ((Handler) Assertions.e(DefaultDrmSessionManager.this.playbackHandler)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.keepaliveSessions.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ReferenceCountListener
        public void a(DefaultDrmSession defaultDrmSession, int i10) {
            if (DefaultDrmSessionManager.this.sessionKeepaliveMs != -9223372036854775807L) {
                DefaultDrmSessionManager.this.keepaliveSessions.remove(defaultDrmSession);
                ((Handler) Assertions.e(DefaultDrmSessionManager.this.playbackHandler)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }
    }

    private synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.playbackLooper;
            if (looper2 == null) {
                this.playbackLooper = looper;
                this.playbackHandler = new Handler(looper);
            } else {
                Assertions.g(looper2 == looper);
                Assertions.e(this.playbackHandler);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public int a(Format format) {
        G(false);
        int iB = ((ExoMediaDrm) Assertions.e(this.exoMediaDrm)).b();
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iB;
            }
            return 1;
        }
        if (Util.H0(this.useDrmSessionsForClearContentTrackTypes, MimeTypes.k(format.sampleMimeType)) != -1) {
            return iB;
        }
        return 0;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    @Nullable
    public DrmSession c(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        G(false);
        Assertions.g(this.prepareCallsCount > 0);
        Assertions.i(this.playbackLooper);
        return s(this.playbackLooper, eventDispatcher, format, true);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final void prepare() {
        G(true);
        int i10 = this.prepareCallsCount;
        this.prepareCallsCount = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.exoMediaDrm == null) {
            ExoMediaDrm exoMediaDrmA = this.exoMediaDrmProvider.a(this.uuid);
            this.exoMediaDrm = exoMediaDrmA;
            exoMediaDrmA.g(new MediaDrmEventListener());
        } else if (this.sessionKeepaliveMs != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.sessions.size(); i11++) {
                this.sessions.get(i11).f(null);
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final void release() {
        G(true);
        int i10 = this.prepareCallsCount - 1;
        this.prepareCallsCount = i10;
        if (i10 != 0) {
            return;
        }
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.sessions);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((DefaultDrmSession) arrayList.get(i11)).e(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, ExoMediaDrm.Provider provider, MediaDrmCallback mediaDrmCallback, HashMap<String, String> map, boolean z6, int[] iArr, boolean z10, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j6) {
        Assertions.e(uuid);
        Assertions.b(!C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        this.exoMediaDrmProvider = provider;
        this.callback = mediaDrmCallback;
        this.keyRequestParameters = map;
        this.multiSession = z6;
        this.useDrmSessionsForClearContentTrackTypes = iArr;
        this.playClearSamplesWithoutKeys = z10;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.provisioningManagerImpl = new ProvisioningManagerImpl();
        this.referenceCountListener = new ReferenceCountListenerImpl();
        this.mode = 0;
        this.sessions = new ArrayList();
        this.preacquiredSessionReferences = f1.h();
        this.keepaliveSessions = f1.h();
        this.sessionKeepaliveMs = j6;
    }

    private void A(Looper looper) {
        if (this.mediaDrmHandler == null) {
            this.mediaDrmHandler = new MediaDrmHandler(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.exoMediaDrm != null && this.prepareCallsCount == 0 && this.sessions.isEmpty() && this.preacquiredSessionReferences.isEmpty()) {
            ((ExoMediaDrm) Assertions.e(this.exoMediaDrm)).release();
            this.exoMediaDrm = null;
        }
    }

    private void C() {
        l1 it = d0.t(this.keepaliveSessions).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).e(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void D() {
        l1 it = d0.t(this.preacquiredSessionReferences).iterator();
        while (it.hasNext()) {
            ((PreacquiredSessionReference) it.next()).release();
        }
    }

    private void G(boolean z6) {
        if (z6 && this.playbackLooper == null) {
            Log.j(TAG, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        if (Thread.currentThread() != ((Looper) Assertions.e(this.playbackLooper)).getThread()) {
            Log.j(TAG, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.playbackLooper.getThread().getName(), new IllegalStateException());
        }
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.offlineLicenseKeySetId != null) {
            return true;
        }
        if (x(drmInitData, this.uuid, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.h(0).g(C.COMMON_PSSH_UUID)) {
                return false;
            }
            Log.i(TAG, "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.uuid);
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        if ("cbcs".equals(str)) {
            return Util.SDK_INT >= 25;
        }
        return ("cbc1".equals(str) || "cens".equals(str)) ? false : true;
    }

    private DefaultDrmSession v(@Nullable List<DrmInitData.SchemeData> list, boolean z6, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        Assertions.e(this.exoMediaDrm);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.uuid, this.exoMediaDrm, this.provisioningManagerImpl, this.referenceCountListener, list, this.mode, this.playClearSamplesWithoutKeys | z6, z6, this.offlineLicenseKeySetId, this.keyRequestParameters, this.callback, (Looper) Assertions.e(this.playbackLooper), this.loadErrorHandlingPolicy, (PlayerId) Assertions.e(this.playerId));
        defaultDrmSession.f(eventDispatcher);
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            defaultDrmSession.f(null);
        }
        return defaultDrmSession;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z6) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            DrmInitData.SchemeData schemeDataH = drmInitData.h(i10);
            if ((schemeDataH.g(uuid) || (C.CLEARKEY_UUID.equals(uuid) && schemeDataH.g(C.COMMON_PSSH_UUID))) && (schemeDataH.data != null || z6)) {
                arrayList.add(schemeDataH);
            }
        }
        return arrayList;
    }

    @Nullable
    private DrmSession z(int i10, boolean z6) {
        ExoMediaDrm exoMediaDrm = (ExoMediaDrm) Assertions.e(this.exoMediaDrm);
        if ((exoMediaDrm.b() == 2 && FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) || Util.H0(this.useDrmSessionsForClearContentTrackTypes, i10) == -1 || exoMediaDrm.b() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.placeholderDrmSession;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(a0.x(), true, null, z6);
            this.sessions.add(defaultDrmSessionW);
            this.placeholderDrmSession = defaultDrmSessionW;
        } else {
            defaultDrmSession.f(null);
        }
        return this.placeholderDrmSession;
    }

    public void E(int i10, @Nullable byte[] bArr) {
        Assertions.g(this.sessions.isEmpty());
        if (i10 == 1 || i10 == 3) {
            Assertions.e(bArr);
        }
        this.mode = i10;
        this.offlineLicenseKeySetId = bArr;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public DrmSessionManager.DrmSessionReference d(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        Assertions.g(this.prepareCallsCount > 0);
        Assertions.i(this.playbackLooper);
        PreacquiredSessionReference preacquiredSessionReference = new PreacquiredSessionReference(eventDispatcher);
        preacquiredSessionReference.c(format);
        return preacquiredSessionReference;
    }

    private void F(DrmSession drmSession, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        drmSession.e(eventDispatcher);
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            drmSession.e(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Nullable
    public DrmSession s(Looper looper, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format, boolean z6) {
        List<DrmInitData.SchemeData> listX;
        A(looper);
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData == null) {
            return z(MimeTypes.k(format.sampleMimeType), z6);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.offlineLicenseKeySetId == null) {
            listX = x((DrmInitData) Assertions.e(drmInitData), this.uuid, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.uuid);
                Log.d(TAG, "DRM error", missingSchemeDataException);
                if (eventDispatcher != null) {
                    eventDispatcher.l(missingSchemeDataException);
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (!this.multiSession) {
            defaultDrmSessionW = this.noMultiSessionDrmSession;
        } else {
            for (DefaultDrmSession defaultDrmSession : this.sessions) {
                if (Util.c(defaultDrmSession.schemeDatas, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, eventDispatcher, z6);
            if (!this.multiSession) {
                this.noMultiSessionDrmSession = defaultDrmSessionW;
            }
            this.sessions.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.f(eventDispatcher);
        }
        return defaultDrmSessionW;
    }

    private static boolean t(DrmSession drmSession) {
        if (drmSession.getState() == 1 && (Util.SDK_INT < 19 || (((DrmSession.DrmSessionException) Assertions.e(drmSession.getError())).getCause() instanceof ResourceBusyException))) {
            return true;
        }
        return false;
    }

    private DefaultDrmSession w(@Nullable List<DrmInitData.SchemeData> list, boolean z6, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, boolean z10) {
        DefaultDrmSession defaultDrmSessionV = v(list, z6, eventDispatcher);
        if (t(defaultDrmSessionV) && !this.keepaliveSessions.isEmpty()) {
            C();
            F(defaultDrmSessionV, eventDispatcher);
            defaultDrmSessionV = v(list, z6, eventDispatcher);
        }
        if (t(defaultDrmSessionV) && z10 && !this.preacquiredSessionReferences.isEmpty()) {
            D();
            if (!this.keepaliveSessions.isEmpty()) {
                C();
            }
            F(defaultDrmSessionV, eventDispatcher);
            return v(list, z6, eventDispatcher);
        }
        return defaultDrmSessionV;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public void b(Looper looper, PlayerId playerId) {
        y(looper);
        this.playerId = playerId;
    }
}
