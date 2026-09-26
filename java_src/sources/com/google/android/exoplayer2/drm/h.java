package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.analytics.t1;
import com.google.common.collect.f1;
import com.google.common.collect.l1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
public class h implements x {
    public static final long DEFAULT_SESSION_KEEPALIVE_MS = 300000;
    public static final int INITIAL_DRM_REQUEST_RETRY_COUNT = 3;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    private static final String TAG = "DefaultDrmSessionMgr";
    private final m0 callback;

    @Nullable
    private f0 exoMediaDrm;
    private final f0.d exoMediaDrmProvider;
    private final Set<com.google.android.exoplayer2.drm.g> keepaliveSessions;
    private final HashMap<String, String> keyRequestParameters;
    private final com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;

    @Nullable
    volatile d mediaDrmHandler;
    private int mode;
    private final boolean multiSession;

    @Nullable
    private com.google.android.exoplayer2.drm.g noMultiSessionDrmSession;

    @Nullable
    private byte[] offlineLicenseKeySetId;

    @Nullable
    private com.google.android.exoplayer2.drm.g placeholderDrmSession;
    private final boolean playClearSamplesWithoutKeys;
    private Handler playbackHandler;
    private Looper playbackLooper;
    private t1 playerId;
    private final Set<f> preacquiredSessionReferences;
    private int prepareCallsCount;
    private final g provisioningManagerImpl;
    private final C0167h referenceCountListener;
    private final long sessionKeepaliveMs;
    private final List<com.google.android.exoplayer2.drm.g> sessions;
    private final int[] useDrmSessionsForClearContentTrackTypes;
    private final UUID uuid;

    public static final class b {
        private boolean multiSession;
        private boolean playClearSamplesWithoutKeys;
        private final HashMap<String, String> keyRequestParameters = new HashMap<>();
        private UUID uuid = com.google.android.exoplayer2.i.WIDEVINE_UUID;
        private f0.d exoMediaDrmProvider = j0.DEFAULT_PROVIDER;
        private com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.w();
        private int[] useDrmSessionsForClearContentTrackTypes = new int[0];
        private long sessionKeepaliveMs = 300000;

        public b b(boolean z6) {
            this.multiSession = z6;
            return this;
        }

        public b c(boolean z6) {
            this.playClearSamplesWithoutKeys = z6;
            return this;
        }

        public b d(int... iArr) {
            for (int i10 : iArr) {
                boolean z6 = true;
                if (i10 != 2 && i10 != 1) {
                    z6 = false;
                }
                com.google.android.exoplayer2.util.a.a(z6);
            }
            this.useDrmSessionsForClearContentTrackTypes = (int[]) iArr.clone();
            return this;
        }

        public h a(m0 m0Var) {
            return new h(this.uuid, this.exoMediaDrmProvider, m0Var, this.keyRequestParameters, this.multiSession, this.useDrmSessionsForClearContentTrackTypes, this.playClearSamplesWithoutKeys, this.loadErrorHandlingPolicy, this.sessionKeepaliveMs);
        }

        public b e(UUID uuid, f0.d dVar) {
            this.uuid = (UUID) com.google.android.exoplayer2.util.a.e(uuid);
            this.exoMediaDrmProvider = (f0.d) com.google.android.exoplayer2.util.a.e(dVar);
            return this;
        }
    }

    private class c implements f0.c {
        private c() {
        }

        @Override // com.google.android.exoplayer2.drm.f0.c
        public void a(f0 f0Var, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
            ((d) com.google.android.exoplayer2.util.a.e(h.this.mediaDrmHandler)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (com.google.android.exoplayer2.drm.g gVar : h.this.sessions) {
                if (gVar.o(bArr)) {
                    gVar.w(message.what);
                    return;
                }
            }
        }
    }

    public static final class e extends Exception {
        private e(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class f implements x.b {

        @Nullable
        private final v.a eventDispatcher;
        private boolean isReleased;

        @Nullable
        private n session;

        public f(v.a aVar) {
            this.eventDispatcher = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(a2 a2Var) {
            if (h.this.prepareCallsCount == 0 || this.isReleased) {
                return;
            }
            h hVar = h.this;
            this.session = hVar.s((Looper) com.google.android.exoplayer2.util.a.e(hVar.playbackLooper), this.eventDispatcher, a2Var, false);
            h.this.preacquiredSessionReferences.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.isReleased) {
                return;
            }
            n nVar = this.session;
            if (nVar != null) {
                nVar.e(this.eventDispatcher);
            }
            h.this.preacquiredSessionReferences.remove(this);
            this.isReleased = true;
        }

        public void c(final a2 a2Var) {
            ((Handler) com.google.android.exoplayer2.util.a.e(h.this.playbackHandler)).post(new Runnable() { // from class: com.google.android.exoplayer2.drm.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1199a.d(a2Var);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.x.b
        public void release() {
            com.google.android.exoplayer2.util.o0.C0((Handler) com.google.android.exoplayer2.util.a.e(h.this.playbackHandler), new Runnable() { // from class: com.google.android.exoplayer2.drm.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1198a.e();
                }
            });
        }
    }

    private class g implements com.google.android.exoplayer2.drm.g.a {

        @Nullable
        private com.google.android.exoplayer2.drm.g provisioningSession;
        private final Set<com.google.android.exoplayer2.drm.g> sessionsAwaitingProvisioning = new HashSet();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.g.a
        public void a(Exception exc, boolean z6) {
            this.provisioningSession = null;
            com.google.common.collect.a0 a0VarT = com.google.common.collect.a0.t(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            l1 it = a0VarT.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.drm.g) it.next()).y(exc, z6);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.g.a
        public void onProvisionCompleted() {
            this.provisioningSession = null;
            com.google.common.collect.a0 a0VarT = com.google.common.collect.a0.t(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            l1 it = a0VarT.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.drm.g) it.next()).x();
            }
        }

        @Override // com.google.android.exoplayer2.drm.g.a
        public void b(com.google.android.exoplayer2.drm.g gVar) {
            this.sessionsAwaitingProvisioning.add(gVar);
            if (this.provisioningSession != null) {
                return;
            }
            this.provisioningSession = gVar;
            gVar.C();
        }

        public void c(com.google.android.exoplayer2.drm.g gVar) {
            this.sessionsAwaitingProvisioning.remove(gVar);
            if (this.provisioningSession == gVar) {
                this.provisioningSession = null;
                if (this.sessionsAwaitingProvisioning.isEmpty()) {
                    return;
                }
                com.google.android.exoplayer2.drm.g next = this.sessionsAwaitingProvisioning.iterator().next();
                this.provisioningSession = next;
                next.C();
            }
        }

        public g(h hVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: com.google.android.exoplayer2.drm.h$h, reason: collision with other inner class name */
    class C0167h implements com.google.android.exoplayer2.drm.g.b {
        private C0167h() {
        }

        @Override // com.google.android.exoplayer2.drm.g.b
        public void a(final com.google.android.exoplayer2.drm.g gVar, int i10) {
            if (i10 == 1 && h.this.prepareCallsCount > 0 && h.this.sessionKeepaliveMs != -9223372036854775807L) {
                h.this.keepaliveSessions.add(gVar);
                ((Handler) com.google.android.exoplayer2.util.a.e(h.this.playbackHandler)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        gVar.e(null);
                    }
                }, gVar, SystemClock.uptimeMillis() + h.this.sessionKeepaliveMs);
            } else if (i10 == 0) {
                h.this.sessions.remove(gVar);
                if (h.this.placeholderDrmSession == gVar) {
                    h.this.placeholderDrmSession = null;
                }
                if (h.this.noMultiSessionDrmSession == gVar) {
                    h.this.noMultiSessionDrmSession = null;
                }
                h.this.provisioningManagerImpl.c(gVar);
                if (h.this.sessionKeepaliveMs != -9223372036854775807L) {
                    ((Handler) com.google.android.exoplayer2.util.a.e(h.this.playbackHandler)).removeCallbacksAndMessages(gVar);
                    h.this.keepaliveSessions.remove(gVar);
                }
            }
            h.this.B();
        }

        @Override // com.google.android.exoplayer2.drm.g.b
        public void b(com.google.android.exoplayer2.drm.g gVar, int i10) {
            if (h.this.sessionKeepaliveMs != -9223372036854775807L) {
                h.this.keepaliveSessions.remove(gVar);
                ((Handler) com.google.android.exoplayer2.util.a.e(h.this.playbackHandler)).removeCallbacksAndMessages(gVar);
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
                com.google.android.exoplayer2.util.a.g(looper2 == looper);
                com.google.android.exoplayer2.util.a.e(this.playbackHandler);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Deprecated
    public h(UUID uuid, f0 f0Var, m0 m0Var, @Nullable HashMap<String, String> map) {
        this(uuid, f0Var, m0Var, map == null ? new HashMap<>() : map, false, 3);
    }

    private void A(Looper looper) {
        if (this.mediaDrmHandler == null) {
            this.mediaDrmHandler = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.exoMediaDrm != null && this.prepareCallsCount == 0 && this.sessions.isEmpty() && this.preacquiredSessionReferences.isEmpty()) {
            ((f0) com.google.android.exoplayer2.util.a.e(this.exoMediaDrm)).release();
            this.exoMediaDrm = null;
        }
    }

    private void C() {
        l1 it = com.google.common.collect.d0.t(this.keepaliveSessions).iterator();
        while (it.hasNext()) {
            ((n) it.next()).e(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void D() {
        l1 it = com.google.common.collect.d0.t(this.preacquiredSessionReferences).iterator();
        while (it.hasNext()) {
            ((f) it.next()).release();
        }
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.offlineLicenseKeySetId != null) {
            return true;
        }
        if (x(drmInitData, this.uuid, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.e(0).c(com.google.android.exoplayer2.i.COMMON_PSSH_UUID)) {
                return false;
            }
            com.google.android.exoplayer2.util.t.i(TAG, "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.uuid);
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        if ("cbcs".equals(str)) {
            return com.google.android.exoplayer2.util.o0.SDK_INT >= 25;
        }
        return ("cbc1".equals(str) || "cens".equals(str)) ? false : true;
    }

    private com.google.android.exoplayer2.drm.g v(@Nullable List<DrmInitData.SchemeData> list, boolean z6, @Nullable v.a aVar) {
        com.google.android.exoplayer2.util.a.e(this.exoMediaDrm);
        com.google.android.exoplayer2.drm.g gVar = new com.google.android.exoplayer2.drm.g(this.uuid, this.exoMediaDrm, this.provisioningManagerImpl, this.referenceCountListener, list, this.mode, this.playClearSamplesWithoutKeys | z6, z6, this.offlineLicenseKeySetId, this.keyRequestParameters, this.callback, (Looper) com.google.android.exoplayer2.util.a.e(this.playbackLooper), this.loadErrorHandlingPolicy, (t1) com.google.android.exoplayer2.util.a.e(this.playerId));
        gVar.f(aVar);
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            gVar.f(null);
        }
        return gVar;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z6) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            DrmInitData.SchemeData schemeDataE = drmInitData.e(i10);
            if ((schemeDataE.c(uuid) || (com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(uuid) && schemeDataE.c(com.google.android.exoplayer2.i.COMMON_PSSH_UUID))) && (schemeDataE.data != null || z6)) {
                arrayList.add(schemeDataE);
            }
        }
        return arrayList;
    }

    @Nullable
    private n z(int i10, boolean z6) {
        f0 f0Var = (f0) com.google.android.exoplayer2.util.a.e(this.exoMediaDrm);
        if ((f0Var.b() == 2 && g0.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) || com.google.android.exoplayer2.util.o0.t0(this.useDrmSessionsForClearContentTrackTypes, i10) == -1 || f0Var.b() == 1) {
            return null;
        }
        com.google.android.exoplayer2.drm.g gVar = this.placeholderDrmSession;
        if (gVar == null) {
            com.google.android.exoplayer2.drm.g gVarW = w(com.google.common.collect.a0.x(), true, null, z6);
            this.sessions.add(gVarW);
            this.placeholderDrmSession = gVarW;
        } else {
            gVar.f(null);
        }
        return this.placeholderDrmSession;
    }

    public void E(int i10, @Nullable byte[] bArr) {
        com.google.android.exoplayer2.util.a.g(this.sessions.isEmpty());
        if (i10 == 1 || i10 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.mode = i10;
        this.offlineLicenseKeySetId = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.x
    @Nullable
    public n a(@Nullable v.a aVar, a2 a2Var) {
        com.google.android.exoplayer2.util.a.g(this.prepareCallsCount > 0);
        com.google.android.exoplayer2.util.a.i(this.playbackLooper);
        return s(this.playbackLooper, aVar, a2Var, true);
    }

    @Override // com.google.android.exoplayer2.drm.x
    public x.b b(@Nullable v.a aVar, a2 a2Var) {
        com.google.android.exoplayer2.util.a.g(this.prepareCallsCount > 0);
        com.google.android.exoplayer2.util.a.i(this.playbackLooper);
        f fVar = new f(aVar);
        fVar.c(a2Var);
        return fVar;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public int c(a2 a2Var) {
        int iB = ((f0) com.google.android.exoplayer2.util.a.e(this.exoMediaDrm)).b();
        DrmInitData drmInitData = a2Var.drmInitData;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iB;
            }
            return 1;
        }
        if (com.google.android.exoplayer2.util.o0.t0(this.useDrmSessionsForClearContentTrackTypes, com.google.android.exoplayer2.util.x.i(a2Var.sampleMimeType)) != -1) {
            return iB;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public final void prepare() {
        int i10 = this.prepareCallsCount;
        this.prepareCallsCount = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.exoMediaDrm == null) {
            f0 f0VarA = this.exoMediaDrmProvider.a(this.uuid);
            this.exoMediaDrm = f0VarA;
            f0VarA.f(new c());
        } else if (this.sessionKeepaliveMs != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.sessions.size(); i11++) {
                this.sessions.get(i11).f(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.x
    public final void release() {
        int i10 = this.prepareCallsCount - 1;
        this.prepareCallsCount = i10;
        if (i10 != 0) {
            return;
        }
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.sessions);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((com.google.android.exoplayer2.drm.g) arrayList.get(i11)).e(null);
            }
        }
        D();
        B();
    }

    private void F(n nVar, @Nullable v.a aVar) {
        nVar.e(aVar);
        if (this.sessionKeepaliveMs != -9223372036854775807L) {
            nVar.e(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Nullable
    public n s(Looper looper, @Nullable v.a aVar, a2 a2Var, boolean z6) {
        List<DrmInitData.SchemeData> listX;
        A(looper);
        DrmInitData drmInitData = a2Var.drmInitData;
        if (drmInitData == null) {
            return z(com.google.android.exoplayer2.util.x.i(a2Var.sampleMimeType), z6);
        }
        com.google.android.exoplayer2.drm.g gVarW = null;
        Object[] objArr = 0;
        if (this.offlineLicenseKeySetId == null) {
            listX = x((DrmInitData) com.google.android.exoplayer2.util.a.e(drmInitData), this.uuid, false);
            if (listX.isEmpty()) {
                e eVar = new e(this.uuid);
                com.google.android.exoplayer2.util.t.d(TAG, "DRM error", eVar);
                if (aVar != null) {
                    aVar.l(eVar);
                }
                return new d0(new n.a(eVar, 6003));
            }
        } else {
            listX = null;
        }
        if (!this.multiSession) {
            gVarW = this.noMultiSessionDrmSession;
        } else {
            for (com.google.android.exoplayer2.drm.g gVar : this.sessions) {
                if (com.google.android.exoplayer2.util.o0.c(gVar.schemeDatas, listX)) {
                    gVarW = gVar;
                    break;
                }
            }
        }
        if (gVarW == null) {
            gVarW = w(listX, false, aVar, z6);
            if (!this.multiSession) {
                this.noMultiSessionDrmSession = gVarW;
            }
            this.sessions.add(gVarW);
        } else {
            gVarW.f(aVar);
        }
        return gVarW;
    }

    private static boolean t(n nVar) {
        if (nVar.getState() == 1 && (com.google.android.exoplayer2.util.o0.SDK_INT < 19 || (((n.a) com.google.android.exoplayer2.util.a.e(nVar.getError())).getCause() instanceof ResourceBusyException))) {
            return true;
        }
        return false;
    }

    private com.google.android.exoplayer2.drm.g w(@Nullable List<DrmInitData.SchemeData> list, boolean z6, @Nullable v.a aVar, boolean z10) {
        com.google.android.exoplayer2.drm.g gVarV = v(list, z6, aVar);
        if (t(gVarV) && !this.keepaliveSessions.isEmpty()) {
            C();
            F(gVarV, aVar);
            gVarV = v(list, z6, aVar);
        }
        if (t(gVarV) && z10 && !this.preacquiredSessionReferences.isEmpty()) {
            D();
            if (!this.keepaliveSessions.isEmpty()) {
                C();
            }
            F(gVarV, aVar);
            return v(list, z6, aVar);
        }
        return gVarV;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public void d(Looper looper, t1 t1Var) {
        y(looper);
        this.playerId = t1Var;
    }

    @Deprecated
    public h(UUID uuid, f0 f0Var, m0 m0Var, @Nullable HashMap<String, String> map, boolean z6) {
        this(uuid, f0Var, m0Var, map == null ? new HashMap<>() : map, z6, 3);
    }

    @Deprecated
    public h(UUID uuid, f0 f0Var, m0 m0Var, @Nullable HashMap<String, String> map, boolean z6, int i10) {
        this(uuid, new f0.a(f0Var), m0Var, map == null ? new HashMap<>() : map, z6, new int[0], false, new com.google.android.exoplayer2.upstream.w(i10), 300000L);
    }

    private h(UUID uuid, f0.d dVar, m0 m0Var, HashMap<String, String> map, boolean z6, int[] iArr, boolean z10, com.google.android.exoplayer2.upstream.f0 f0Var, long j6) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        this.exoMediaDrmProvider = dVar;
        this.callback = m0Var;
        this.keyRequestParameters = map;
        this.multiSession = z6;
        this.useDrmSessionsForClearContentTrackTypes = iArr;
        this.playClearSamplesWithoutKeys = z10;
        this.loadErrorHandlingPolicy = f0Var;
        this.provisioningManagerImpl = new g(this);
        this.referenceCountListener = new C0167h();
        this.mode = 0;
        this.sessions = new ArrayList();
        this.preacquiredSessionReferences = f1.h();
        this.keepaliveSessions = f1.h();
        this.sessionKeepaliveMs = j6;
    }
}
