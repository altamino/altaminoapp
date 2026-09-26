package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class w1 implements Handler.Callback, com.google.android.exoplayer2.source.y.a, com.google.android.exoplayer2.trackselection.b0.a, u2.d, l.a, h3.a {
    private static final int ACTIVE_INTERVAL_MS = 10;
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final int MSG_ADD_MEDIA_SOURCES = 18;
    private static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    private static final int MSG_DO_SOME_WORK = 2;
    private static final int MSG_MOVE_MEDIA_SOURCES = 19;
    private static final int MSG_PERIOD_PREPARED = 8;
    private static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    private static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    private static final int MSG_PREPARE = 0;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_FOREGROUND_MODE = 13;
    private static final int MSG_SET_MEDIA_SOURCES = 17;
    private static final int MSG_SET_OFFLOAD_SCHEDULING_ENABLED = 24;
    private static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_REPEAT_MODE = 11;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 12;
    private static final int MSG_SET_SHUFFLE_ORDER = 21;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    private static final long PLAYBACK_BUFFER_EMPTY_THRESHOLD_US = 500000;
    private static final long PLAYBACK_STUCK_AFTER_MS = 4000;
    private static final String TAG = "ExoPlayerImplInternal";
    private final long backBufferDurationUs;
    private final com.google.android.exoplayer2.upstream.e bandwidthMeter;
    private final com.google.android.exoplayer2.util.d clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private final com.google.android.exoplayer2.trackselection.c0 emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final com.google.android.exoplayer2.util.p handler;
    private final HandlerThread internalPlaybackThread;
    private boolean isRebuffering;
    private final f2 livePlaybackSpeedControl;
    private final g2 loadControl;
    private final l mediaClock;
    private final u2 mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;

    @Nullable
    private h pendingInitialSeekPosition;
    private final ArrayList<d> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;

    @Nullable
    private q pendingRecoverableRendererError;
    private final z3.b period;
    private a3 playbackInfo;
    private e playbackInfoUpdate;
    private final f playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private long playbackMaybeBecameStuckAtMs = -9223372036854775807L;
    private final r2 queue;
    private final long releaseTimeoutMs;
    private boolean released;
    private final o3[] rendererCapabilities;
    private long rendererPositionUs;
    private final m3[] renderers;
    private final Set<m3> renderersToReset;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private r3 seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final com.google.android.exoplayer2.trackselection.b0 trackSelector;
    private final z3.d window;

    class a implements m3.a {
        a() {
        }

        @Override // com.google.android.exoplayer2.m3.a
        public void a() {
            w1.this.requestForRendererSleep = true;
        }

        @Override // com.google.android.exoplayer2.m3.a
        public void b() {
            w1.this.handler.sendEmptyMessage(2);
        }
    }

    private static final class b {
        private final List<u2.c> mediaSourceHolders;
        private final long positionUs;
        private final com.google.android.exoplayer2.source.y0 shuffleOrder;
        private final int windowIndex;

        /* synthetic */ b(List list, com.google.android.exoplayer2.source.y0 y0Var, int i10, long j6, a aVar) {
            this(list, y0Var, i10, j6);
        }

        private b(List<u2.c> list, com.google.android.exoplayer2.source.y0 y0Var, int i10, long j6) {
            this.mediaSourceHolders = list;
            this.shuffleOrder = y0Var;
            this.windowIndex = i10;
            this.positionUs = j6;
        }
    }

    private static final class d implements Comparable<d> {
        public final h3 message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;

        @Nullable
        public Object resolvedPeriodUid;

        public void b(int i10, long j6, Object obj) {
            this.resolvedPeriodIndex = i10;
            this.resolvedPeriodTimeUs = j6;
            this.resolvedPeriodUid = obj;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            Object obj = this.resolvedPeriodUid;
            if ((obj == null) != (dVar.resolvedPeriodUid == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i10 = this.resolvedPeriodIndex - dVar.resolvedPeriodIndex;
            return i10 != 0 ? i10 : com.google.android.exoplayer2.util.o0.n(this.resolvedPeriodTimeUs, dVar.resolvedPeriodTimeUs);
        }

        public d(h3 h3Var) {
            this.message = h3Var;
        }
    }

    public static final class e {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public boolean hasPlayWhenReadyChangeReason;
        public int operationAcks;
        public int playWhenReadyChangeReason;
        public a3 playbackInfo;
        public boolean positionDiscontinuity;

        public void b(int i10) {
            this.hasPendingChange |= i10 > 0;
            this.operationAcks += i10;
        }

        public void c(int i10) {
            this.hasPendingChange = true;
            this.hasPlayWhenReadyChangeReason = true;
            this.playWhenReadyChangeReason = i10;
        }

        public void d(a3 a3Var) {
            this.hasPendingChange |= this.playbackInfo != a3Var;
            this.playbackInfo = a3Var;
        }

        public void e(int i10) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                com.google.android.exoplayer2.util.a.a(i10 == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i10;
        }

        public e(a3 a3Var) {
            this.playbackInfo = a3Var;
        }
    }

    public interface f {
        void a(e eVar);
    }

    public w1(m3[] m3VarArr, com.google.android.exoplayer2.trackselection.b0 b0Var, com.google.android.exoplayer2.trackselection.c0 c0Var, g2 g2Var, com.google.android.exoplayer2.upstream.e eVar, int i10, boolean z6, com.google.android.exoplayer2.analytics.a aVar, r3 r3Var, f2 f2Var, long j6, boolean z10, Looper looper, com.google.android.exoplayer2.util.d dVar, f fVar, com.google.android.exoplayer2.analytics.t1 t1Var) {
        this.playbackInfoUpdateListener = fVar;
        this.renderers = m3VarArr;
        this.trackSelector = b0Var;
        this.emptyTrackSelectorResult = c0Var;
        this.loadControl = g2Var;
        this.bandwidthMeter = eVar;
        this.repeatMode = i10;
        this.shuffleModeEnabled = z6;
        this.seekParameters = r3Var;
        this.livePlaybackSpeedControl = f2Var;
        this.releaseTimeoutMs = j6;
        this.setForegroundModeTimeoutMs = j6;
        this.pauseAtEndOfWindow = z10;
        this.clock = dVar;
        this.backBufferDurationUs = g2Var.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = g2Var.retainBackBufferFromKeyframe();
        a3 a3VarJ = a3.j(c0Var);
        this.playbackInfo = a3VarJ;
        this.playbackInfoUpdate = new e(a3VarJ);
        this.rendererCapabilities = new o3[m3VarArr.length];
        for (int i11 = 0; i11 < m3VarArr.length; i11++) {
            m3VarArr[i11].e(i11, t1Var);
            this.rendererCapabilities[i11] = m3VarArr[i11].getCapabilities();
        }
        this.mediaClock = new l(this, dVar);
        this.pendingMessages = new ArrayList<>();
        this.renderersToReset = com.google.common.collect.f1.h();
        this.window = new z3.d();
        this.period = new z3.b();
        b0Var.c(this, eVar);
        this.deliverPendingMessageAtStartPositionRequired = true;
        Handler handler = new Handler(looper);
        this.queue = new r2(aVar, handler);
        this.mediaSourceList = new u2(this, aVar, handler, t1Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.internalPlaybackThread = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.playbackLooper = looper2;
        this.handler = dVar.createHandler(looper2, this);
    }

    @CheckResult
    private a3 J(com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10, long j11, boolean z6, int i10) {
        List<Metadata> listX;
        com.google.android.exoplayer2.source.h1 h1Var;
        com.google.android.exoplayer2.trackselection.c0 c0Var;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && j6 == this.playbackInfo.positionUs && bVar.equals(this.playbackInfo.periodId)) ? false : true;
        p0();
        a3 a3Var = this.playbackInfo;
        com.google.android.exoplayer2.source.h1 h1Var2 = a3Var.trackGroups;
        com.google.android.exoplayer2.trackselection.c0 c0Var2 = a3Var.trackSelectorResult;
        List<Metadata> list = a3Var.staticMetadata;
        if (this.mediaSourceList.s()) {
            o2 o2VarP = this.queue.p();
            com.google.android.exoplayer2.source.h1 h1VarN = o2VarP == null ? com.google.android.exoplayer2.source.h1.EMPTY : o2VarP.n();
            com.google.android.exoplayer2.trackselection.c0 c0VarO = o2VarP == null ? this.emptyTrackSelectorResult : o2VarP.o();
            com.google.common.collect.a0<Metadata> a0VarT = t(c0VarO.selections);
            if (o2VarP != null) {
                p2 p2Var = o2VarP.info;
                if (p2Var.requestedContentPositionUs != j10) {
                    o2VarP.info = p2Var.a(j10);
                }
            }
            h1Var = h1VarN;
            c0Var = c0VarO;
            listX = a0VarT;
        } else if (bVar.equals(this.playbackInfo.periodId)) {
            listX = list;
            h1Var = h1Var2;
            c0Var = c0Var2;
        } else {
            h1Var = com.google.android.exoplayer2.source.h1.EMPTY;
            c0Var = this.emptyTrackSelectorResult;
            listX = com.google.common.collect.a0.x();
        }
        if (z6) {
            this.playbackInfoUpdate.e(i10);
        }
        return this.playbackInfo.c(bVar, j6, j10, j11, A(), h1Var, c0Var, listX);
    }

    private static boolean M(boolean z6, com.google.android.exoplayer2.source.b0.b bVar, long j6, com.google.android.exoplayer2.source.b0.b bVar2, z3.b bVar3, long j10) {
        if (z6 || j6 != j10 || !bVar.periodUid.equals(bVar2.periodUid)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.adGroupIndex)) {
            return (bVar3.k(bVar.adGroupIndex, bVar.adIndexInAdGroup) == 4 || bVar3.k(bVar.adGroupIndex, bVar.adIndexInAdGroup) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.t(bVar2.adGroupIndex);
    }

    private void T0(r3 r3Var) {
        this.seekParameters = r3Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private void X() throws q {
        boolean z6;
        boolean z10 = false;
        while (Y0()) {
            if (z10) {
                U();
            }
            o2 o2Var = (o2) com.google.android.exoplayer2.util.a.e(this.queue.b());
            if (this.playbackInfo.periodId.periodUid.equals(o2Var.info.id.periodUid)) {
                com.google.android.exoplayer2.source.b0.b bVar = this.playbackInfo.periodId;
                if (bVar.adGroupIndex == -1) {
                    com.google.android.exoplayer2.source.b0.b bVar2 = o2Var.info.id;
                    if (bVar2.adGroupIndex != -1 || bVar.nextAdGroupIndex == bVar2.nextAdGroupIndex) {
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
            p2 p2Var = o2Var.info;
            com.google.android.exoplayer2.source.b0.b bVar3 = p2Var.id;
            long j6 = p2Var.startPositionUs;
            this.playbackInfo = J(bVar3, j6, p2Var.requestedContentPositionUs, j6, !z6, 0);
            p0();
            k1();
            z10 = true;
        }
    }

    private void d1() throws q {
        this.isRebuffering = false;
        this.mediaClock.f();
        for (m3 m3Var : this.renderers) {
            if (O(m3Var)) {
                m3Var.start();
            }
        }
    }

    private void f1(boolean z6, boolean z10) {
        o0(z6 || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.b(z10 ? 1 : 0);
        this.loadControl.onStopped();
        X0(1);
    }

    private void j() throws q {
        z0(true);
    }

    private void j0() {
        o0(true, false, true, false);
        this.loadControl.onReleased();
        X0(1);
        this.internalPlaybackThread.quit();
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private synchronized void n1(com.google.common.base.u<Boolean> uVar, long j6) {
        long jElapsedRealtime = this.clock.elapsedRealtime() + j6;
        boolean z6 = false;
        while (!uVar.get().booleanValue() && j6 > 0) {
            try {
                this.clock.a();
                wait(j6);
            } catch (InterruptedException unused) {
                z6 = true;
            }
            j6 = jElapsedRealtime - this.clock.elapsedRealtime();
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
    }

    private static boolean s0(d dVar, z3 z3Var, z3 z3Var2, int i10, boolean z6, z3.d dVar2, z3.b bVar) {
        Object obj = dVar.resolvedPeriodUid;
        if (obj == null) {
            Pair<Object, Long> pairV0 = v0(z3Var, new h(dVar.message.h(), dVar.message.d(), dVar.message.f() == Long.MIN_VALUE ? -9223372036854775807L : com.google.android.exoplayer2.util.o0.w0(dVar.message.f())), false, i10, z6, dVar2, bVar);
            if (pairV0 == null) {
                return false;
            }
            dVar.b(z3Var.f(pairV0.first), ((Long) pairV0.second).longValue(), pairV0.first);
            if (dVar.message.f() == Long.MIN_VALUE) {
                r0(z3Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int iF = z3Var.f(obj);
        if (iF == -1) {
            return false;
        }
        if (dVar.message.f() == Long.MIN_VALUE) {
            r0(z3Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.resolvedPeriodIndex = iF;
        z3Var2.l(dVar.resolvedPeriodUid, bVar);
        if (bVar.isPlaceholder && z3Var2.r(bVar.windowIndex, dVar2).firstPeriodIndex == z3Var2.f(dVar.resolvedPeriodUid)) {
            Pair<Object, Long> pairN = z3Var.n(dVar2, bVar, z3Var.l(dVar.resolvedPeriodUid, bVar).windowIndex, dVar.resolvedPeriodTimeUs + bVar.q());
            dVar.b(z3Var.f(pairN.first), ((Long) pairN.second).longValue(), pairN.first);
        }
        return true;
    }

    private static a2[] v(com.google.android.exoplayer2.trackselection.s sVar) {
        int length = sVar != null ? sVar.length() : 0;
        a2[] a2VarArr = new a2[length];
        for (int i10 = 0; i10 < length; i10++) {
            a2VarArr[i10] = sVar.getFormat(i10);
        }
        return a2VarArr;
    }

    @Nullable
    private static Pair<Object, Long> v0(z3 z3Var, h hVar, boolean z6, int i10, boolean z10, z3.d dVar, z3.b bVar) {
        Object objW0;
        z3 z3Var2 = hVar.timeline;
        if (z3Var.u()) {
            return null;
        }
        z3 z3Var3 = z3Var2.u() ? z3Var : z3Var2;
        try {
            Pair<Object, Long> pairN = z3Var3.n(dVar, bVar, hVar.windowIndex, hVar.windowPositionUs);
            if (z3Var.equals(z3Var3)) {
                return pairN;
            }
            if (z3Var.f(pairN.first) != -1) {
                return (z3Var3.l(pairN.first, bVar).isPlaceholder && z3Var3.r(bVar.windowIndex, dVar).firstPeriodIndex == z3Var3.f(pairN.first)) ? z3Var.n(dVar, bVar, z3Var.l(pairN.first, bVar).windowIndex, hVar.windowPositionUs) : pairN;
            }
            if (z6 && (objW0 = w0(dVar, bVar, i10, z10, pairN.first, z3Var3, z3Var)) != null) {
                return z3Var.n(dVar, bVar, z3Var.l(objW0, bVar).windowIndex, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override // com.google.android.exoplayer2.h3.a
    public synchronized void b(h3 h3Var) {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            this.handler.obtainMessage(14, h3Var).a();
            return;
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Ignoring messages sent after release.");
        h3Var.k(false);
    }

    public synchronized boolean i0() {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            this.handler.sendEmptyMessage(7);
            n1(new com.google.common.base.u() { // from class: com.google.android.exoplayer2.v1
                @Override // com.google.common.base.u
                public final Object get() {
                    return this.f1351a.R();
                }
            }, this.releaseTimeoutMs);
            return this.released;
        }
        return true;
    }

    public void s(long j6) {
        this.setForegroundModeTimeoutMs = j6;
    }

    public Looper z() {
        return this.playbackLooper;
    }

    private static class c {
        public final int fromIndex;
        public final int newFromIndex;
        public final com.google.android.exoplayer2.source.y0 shuffleOrder;
        public final int toIndex;

        public c(int i10, int i11, int i12, com.google.android.exoplayer2.source.y0 y0Var) {
            this.fromIndex = i10;
            this.toIndex = i11;
            this.newFromIndex = i12;
            this.shuffleOrder = y0Var;
        }
    }

    private static final class g {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final com.google.android.exoplayer2.source.b0.b periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public g(com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10, boolean z6, boolean z10, boolean z11) {
            this.periodId = bVar;
            this.periodPositionUs = j6;
            this.requestedContentPositionUs = j10;
            this.forceBufferingState = z6;
            this.endPlayback = z10;
            this.setTargetLiveOffset = z11;
        }
    }

    private static final class h {
        public final z3 timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public h(z3 z3Var, int i10, long j6) {
            this.timeline = z3Var;
            this.windowIndex = i10;
            this.windowPositionUs = j6;
        }
    }

    private long A() {
        return B(this.playbackInfo.bufferedPositionUs);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void A0(h hVar) throws Throwable {
        long jLongValue;
        long j6;
        boolean z6;
        com.google.android.exoplayer2.source.b0.b bVar;
        long j10;
        long j11;
        long j12;
        long jE;
        boolean z10;
        long jB0;
        boolean z11;
        long j13;
        o2 o2VarP;
        a3 a3Var;
        int i10;
        this.playbackInfoUpdate.b(1);
        Pair<Object, Long> pairV0 = v0(this.playbackInfo.timeline, hVar, true, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        try {
            if (pairV0 != null) {
                Object obj = pairV0.first;
                jLongValue = ((Long) pairV0.second).longValue();
                long j14 = hVar.windowPositionUs == -9223372036854775807L ? -9223372036854775807L : jLongValue;
                com.google.android.exoplayer2.source.b0.b bVarB = this.queue.B(this.playbackInfo.timeline, obj, jLongValue);
                if (bVarB.b()) {
                    this.playbackInfo.timeline.l(bVarB.periodUid, this.period);
                    j10 = this.period.n(bVarB.adGroupIndex) == bVarB.adIndexInAdGroup ? this.period.j() : 0L;
                    j11 = j14;
                    bVar = bVarB;
                    z6 = true;
                } else {
                    j6 = j14;
                    z6 = hVar.windowPositionUs == -9223372036854775807L;
                    bVar = bVarB;
                }
                if (this.playbackInfo.timeline.u()) {
                    if (pairV0 == null) {
                        if (this.playbackInfo.playbackState != 1) {
                            X0(4);
                        }
                        o0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.playbackInfo.periodId)) {
                            o2VarP = this.queue.p();
                            if (o2VarP == null && o2VarP.prepared && j10 != 0) {
                                jE = o2VarP.mediaPeriod.e(j10, this.seekParameters);
                            } else {
                                jE = j10;
                            }
                            if (com.google.android.exoplayer2.util.o0.P0(jE) == com.google.android.exoplayer2.util.o0.P0(this.playbackInfo.positionUs) && ((i10 = (a3Var = this.playbackInfo).playbackState) == 2 || i10 == 3)) {
                                long j15 = a3Var.positionUs;
                                this.playbackInfo = J(bVar, j15, j11, j15, z6, 2);
                                return;
                            }
                        } else {
                            jE = j10;
                        }
                        if (this.playbackInfo.playbackState == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        jB0 = B0(bVar, jE, z10);
                        z11 = (j10 != jB0) | z6;
                        try {
                            a3 a3Var2 = this.playbackInfo;
                            z3 z3Var = a3Var2.timeline;
                            l1(z3Var, bVar, z3Var, a3Var2.periodId, j11);
                            z6 = z11;
                            j13 = jB0;
                        } catch (Throwable th) {
                            th = th;
                            z6 = z11;
                            j12 = jB0;
                            this.playbackInfo = J(bVar, j12, j11, j12, z6, 2);
                            throw th;
                        }
                    }
                    this.playbackInfo = J(bVar, j13, j11, j13, z6, 2);
                    return;
                }
                this.pendingInitialSeekPosition = hVar;
                j13 = j10;
                this.playbackInfo = J(bVar, j13, j11, j13, z6, 2);
                return;
            }
            Pair<com.google.android.exoplayer2.source.b0.b, Long> pairY = y(this.playbackInfo.timeline);
            bVar = (com.google.android.exoplayer2.source.b0.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            z6 = !this.playbackInfo.timeline.u();
            j6 = -9223372036854775807L;
            if (this.playbackInfo.timeline.u()) {
                if (pairV0 == null) {
                    if (this.playbackInfo.playbackState != 1) {
                        X0(4);
                    }
                    o0(false, true, false, true);
                } else {
                    if (bVar.equals(this.playbackInfo.periodId)) {
                        o2VarP = this.queue.p();
                        if (o2VarP == null) {
                            jE = j10;
                        } else {
                            jE = j10;
                        }
                        if (com.google.android.exoplayer2.util.o0.P0(jE) == com.google.android.exoplayer2.util.o0.P0(this.playbackInfo.positionUs)) {
                            long j16 = a3Var.positionUs;
                            this.playbackInfo = J(bVar, j16, j11, j16, z6, 2);
                            return;
                        }
                    } else {
                        jE = j10;
                    }
                    if (this.playbackInfo.playbackState == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    jB0 = B0(bVar, jE, z10);
                    z11 = (j10 != jB0) | z6;
                    a3 a3Var3 = this.playbackInfo;
                    z3 z3Var2 = a3Var3.timeline;
                    l1(z3Var2, bVar, z3Var2, a3Var3.periodId, j11);
                    z6 = z11;
                    j13 = jB0;
                }
                this.playbackInfo = J(bVar, j13, j11, j13, z6, 2);
                return;
            }
            this.pendingInitialSeekPosition = hVar;
            j13 = j10;
            this.playbackInfo = J(bVar, j13, j11, j13, z6, 2);
            return;
        } catch (Throwable th2) {
            th = th2;
            j12 = j10;
        }
        j10 = jLongValue;
        j11 = j6;
    }

    private long B(long j6) {
        o2 o2VarJ = this.queue.j();
        if (o2VarJ == null) {
            return 0L;
        }
        return Math.max(0L, j6 - o2VarJ.y(this.rendererPositionUs));
    }

    private long B0(com.google.android.exoplayer2.source.b0.b bVar, long j6, boolean z6) throws q {
        return C0(bVar, j6, this.queue.p() != this.queue.q(), z6);
    }

    private void C(com.google.android.exoplayer2.source.y yVar) {
        if (this.queue.v(yVar)) {
            this.queue.y(this.rendererPositionUs);
            T();
        }
    }

    private void E(boolean z6) {
        o2 o2VarJ = this.queue.j();
        com.google.android.exoplayer2.source.b0.b bVar = o2VarJ == null ? this.playbackInfo.periodId : o2VarJ.info.id;
        boolean z10 = !this.playbackInfo.loadingMediaPeriodId.equals(bVar);
        if (z10) {
            this.playbackInfo = this.playbackInfo.b(bVar);
        }
        a3 a3Var = this.playbackInfo;
        a3Var.bufferedPositionUs = o2VarJ == null ? a3Var.positionUs : o2VarJ.i();
        this.playbackInfo.totalBufferedDurationUs = A();
        if ((z10 || z6) && o2VarJ != null && o2VarJ.prepared) {
            i1(o2VarJ.n(), o2VarJ.o());
        }
    }

    private void F(z3 z3Var, boolean z6) throws Throwable {
        int i10;
        int i11;
        boolean z10;
        g gVarU0 = u0(z3Var, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        com.google.android.exoplayer2.source.b0.b bVar = gVarU0.periodId;
        long j6 = gVarU0.requestedContentPositionUs;
        boolean z11 = gVarU0.forceBufferingState;
        long jB0 = gVarU0.periodPositionUs;
        boolean z12 = (this.playbackInfo.periodId.equals(bVar) && jB0 == this.playbackInfo.positionUs) ? false : true;
        h hVar = null;
        try {
            if (gVarU0.endPlayback) {
                if (this.playbackInfo.playbackState != 1) {
                    X0(4);
                }
                o0(false, false, false, true);
            }
            try {
                if (z12) {
                    i11 = 4;
                    z10 = false;
                    if (!z3Var.u()) {
                        for (o2 o2VarP = this.queue.p(); o2VarP != null; o2VarP = o2VarP.j()) {
                            if (o2VarP.info.id.equals(bVar)) {
                                o2VarP.info = this.queue.r(z3Var, o2VarP.info);
                                o2VarP.A();
                            }
                        }
                        jB0 = B0(bVar, jB0, z11);
                    }
                } else {
                    try {
                        try {
                            i11 = 4;
                            z10 = false;
                            if (!this.queue.F(z3Var, this.rendererPositionUs, x())) {
                                z0(false);
                            }
                        } catch (Throwable th) {
                            th = th;
                            i10 = 4;
                            hVar = null;
                            a3 a3Var = this.playbackInfo;
                            h hVar2 = hVar;
                            l1(z3Var, bVar, a3Var.timeline, a3Var.periodId, gVarU0.setTargetLiveOffset ? jB0 : -9223372036854775807L);
                            if (z12 || j6 != this.playbackInfo.requestedContentPositionUs) {
                                a3 a3Var2 = this.playbackInfo;
                                Object obj = a3Var2.periodId.periodUid;
                                z3 z3Var2 = a3Var2.timeline;
                                this.playbackInfo = J(bVar, jB0, j6, this.playbackInfo.discontinuityStartPositionUs, z12 && z6 && !z3Var2.u() && !z3Var2.l(obj, this.period).isPlaceholder, z3Var.f(obj) == -1 ? i10 : 3);
                            }
                            p0();
                            t0(z3Var, this.playbackInfo.timeline);
                            this.playbackInfo = this.playbackInfo.i(z3Var);
                            if (!z3Var.u()) {
                                this.pendingInitialSeekPosition = hVar2;
                            }
                            E(false);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        i10 = 4;
                    }
                }
                a3 a3Var3 = this.playbackInfo;
                l1(z3Var, bVar, a3Var3.timeline, a3Var3.periodId, gVarU0.setTargetLiveOffset ? jB0 : -9223372036854775807L);
                if (z12 || j6 != this.playbackInfo.requestedContentPositionUs) {
                    a3 a3Var4 = this.playbackInfo;
                    Object obj2 = a3Var4.periodId.periodUid;
                    z3 z3Var3 = a3Var4.timeline;
                    this.playbackInfo = J(bVar, jB0, j6, this.playbackInfo.discontinuityStartPositionUs, (!z12 || !z6 || z3Var3.u() || z3Var3.l(obj2, this.period).isPlaceholder) ? z10 : true, z3Var.f(obj2) == -1 ? i11 : 3);
                }
                p0();
                t0(z3Var, this.playbackInfo.timeline);
                this.playbackInfo = this.playbackInfo.i(z3Var);
                if (!z3Var.u()) {
                    this.pendingInitialSeekPosition = null;
                }
                E(z10);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            i10 = 4;
        }
    }

    private void G(com.google.android.exoplayer2.source.y yVar) throws q {
        if (this.queue.v(yVar)) {
            o2 o2VarJ = this.queue.j();
            o2VarJ.p(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline);
            i1(o2VarJ.n(), o2VarJ.o());
            if (o2VarJ == this.queue.p()) {
                q0(o2VarJ.info.startPositionUs);
                p();
                a3 a3Var = this.playbackInfo;
                com.google.android.exoplayer2.source.b0.b bVar = a3Var.periodId;
                long j6 = o2VarJ.info.startPositionUs;
                this.playbackInfo = J(bVar, j6, a3Var.requestedContentPositionUs, j6, false, 5);
            }
            T();
        }
    }

    private void G0(long j6) {
        for (m3 m3Var : this.renderers) {
            if (m3Var.getStream() != null) {
                H0(m3Var, j6);
            }
        }
    }

    private void H(c3 c3Var, float f6, boolean z6, boolean z10) throws q {
        if (z6) {
            if (z10) {
                this.playbackInfoUpdate.b(1);
            }
            this.playbackInfo = this.playbackInfo.f(c3Var);
        }
        m1(c3Var.speed);
        for (m3 m3Var : this.renderers) {
            if (m3Var != null) {
                m3Var.d(f6, c3Var.speed);
            }
        }
    }

    private void I(c3 c3Var, boolean z6) throws q {
        H(c3Var, c3Var.speed, true, z6);
    }

    private void I0(boolean z6, @Nullable AtomicBoolean atomicBoolean) {
        if (this.foregroundMode != z6) {
            this.foregroundMode = z6;
            if (!z6) {
                for (m3 m3Var : this.renderers) {
                    if (!O(m3Var) && this.renderersToReset.remove(m3Var)) {
                        m3Var.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void J0(b bVar) throws Throwable {
        this.playbackInfoUpdate.b(1);
        if (bVar.windowIndex != -1) {
            this.pendingInitialSeekPosition = new h(new i3(bVar.mediaSourceHolders, bVar.shuffleOrder), bVar.windowIndex, bVar.positionUs);
        }
        F(this.mediaSourceList.C(bVar.mediaSourceHolders, bVar.shuffleOrder), false);
    }

    private boolean L() {
        o2 o2VarQ = this.queue.q();
        if (!o2VarQ.prepared) {
            return false;
        }
        int i10 = 0;
        while (true) {
            m3[] m3VarArr = this.renderers;
            if (i10 >= m3VarArr.length) {
                return true;
            }
            m3 m3Var = m3VarArr[i10];
            com.google.android.exoplayer2.source.w0 w0Var = o2VarQ.sampleStreams[i10];
            if (m3Var.getStream() != w0Var || (w0Var != null && !m3Var.hasReadStreamToEnd() && !K(m3Var, o2VarQ))) {
                return false;
            }
            i10++;
        }
    }

    private void L0(boolean z6) {
        if (z6 == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = z6;
        if (z6 || !this.playbackInfo.sleepingForOffload) {
            return;
        }
        this.handler.sendEmptyMessage(2);
    }

    private void M0(boolean z6) throws q {
        this.pauseAtEndOfWindow = z6;
        p0();
        if (!this.pendingPauseAtEndOfPeriod || this.queue.q() == this.queue.p()) {
            return;
        }
        z0(true);
        E(false);
    }

    private boolean N() {
        o2 o2VarJ = this.queue.j();
        return (o2VarJ == null || o2VarJ.k() == Long.MIN_VALUE) ? false : true;
    }

    private void O0(boolean z6, int i10, boolean z10, int i11) throws q {
        this.playbackInfoUpdate.b(z10 ? 1 : 0);
        this.playbackInfoUpdate.c(i11);
        this.playbackInfo = this.playbackInfo.d(z6, i10);
        this.isRebuffering = false;
        d0(z6);
        if (!a1()) {
            g1();
            k1();
            return;
        }
        int i12 = this.playbackInfo.playbackState;
        if (i12 == 3) {
            d1();
            this.handler.sendEmptyMessage(2);
        } else if (i12 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private boolean P() {
        o2 o2VarP = this.queue.p();
        long j6 = o2VarP.info.durationUs;
        return o2VarP.prepared && (j6 == -9223372036854775807L || this.playbackInfo.positionUs < j6 || !a1());
    }

    private static boolean Q(a3 a3Var, z3.b bVar) {
        com.google.android.exoplayer2.source.b0.b bVar2 = a3Var.periodId;
        z3 z3Var = a3Var.timeline;
        return z3Var.u() || z3Var.l(bVar2.periodUid, bVar).isPlaceholder;
    }

    private void Q0(c3 c3Var) throws q {
        this.mediaClock.b(c3Var);
        I(this.mediaClock.getPlaybackParameters(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean R() {
        return Boolean.valueOf(this.released);
    }

    private void S0(int i10) throws q {
        this.repeatMode = i10;
        if (!this.queue.G(this.playbackInfo.timeline, i10)) {
            z0(true);
        }
        E(false);
    }

    private void U() {
        this.playbackInfoUpdate.d(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.a(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new e(this.playbackInfo);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void V(long j6, long j10) throws q {
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.b()) {
            return;
        }
        if (this.deliverPendingMessageAtStartPositionRequired) {
            j6--;
            this.deliverPendingMessageAtStartPositionRequired = false;
        }
        a3 a3Var = this.playbackInfo;
        int iF = a3Var.timeline.f(a3Var.periodId.periodUid);
        int iMin = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        d dVar = iMin > 0 ? this.pendingMessages.get(iMin - 1) : null;
        while (dVar != null) {
            int i10 = dVar.resolvedPeriodIndex;
            if (i10 <= iF && (i10 != iF || dVar.resolvedPeriodTimeUs <= j6)) {
                break;
            }
            int i11 = iMin - 1;
            dVar = i11 > 0 ? this.pendingMessages.get(iMin - 2) : null;
            iMin = i11;
        }
        if (iMin < this.pendingMessages.size()) {
            d dVar2 = this.pendingMessages.get(iMin);
            while (dVar2 != null && dVar2.resolvedPeriodUid != null) {
                int i12 = dVar2.resolvedPeriodIndex;
                if (i12 >= iF && (i12 != iF || dVar2.resolvedPeriodTimeUs > j6)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.resolvedPeriodUid != null && dVar2.resolvedPeriodIndex == iF) {
                long j11 = dVar2.resolvedPeriodTimeUs;
                if (j11 <= j6 || j11 > j10) {
                    break;
                }
                try {
                    E0(dVar2.message);
                    if (dVar2.message.b() || dVar2.message.j()) {
                        this.pendingMessages.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
                } catch (Throwable th) {
                    if (dVar2.message.b() || dVar2.message.j()) {
                        this.pendingMessages.remove(iMin);
                    }
                    throw th;
                }
            }
            this.nextPendingMessageIndexHint = iMin;
        }
    }

    private void V0(boolean z6) throws q {
        this.shuffleModeEnabled = z6;
        if (!this.queue.H(this.playbackInfo.timeline, z6)) {
            z0(true);
        }
        E(false);
    }

    private void W() throws q {
        p2 p2VarO;
        this.queue.y(this.rendererPositionUs);
        if (this.queue.D() && (p2VarO = this.queue.o(this.rendererPositionUs, this.playbackInfo)) != null) {
            o2 o2VarG = this.queue.g(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, p2VarO, this.emptyTrackSelectorResult);
            o2VarG.mediaPeriod.f(this, p2VarO.startPositionUs);
            if (this.queue.p() == o2VarG) {
                q0(p2VarO.startPositionUs);
            }
            E(false);
        }
        if (!this.shouldContinueLoading) {
            T();
        } else {
            this.shouldContinueLoading = N();
            h1();
        }
    }

    private void W0(com.google.android.exoplayer2.source.y0 y0Var) throws Throwable {
        this.playbackInfoUpdate.b(1);
        F(this.mediaSourceList.D(y0Var), false);
    }

    private void X0(int i10) {
        a3 a3Var = this.playbackInfo;
        if (a3Var.playbackState != i10) {
            if (i10 != 2) {
                this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
            }
            this.playbackInfo = a3Var.g(i10);
        }
    }

    private void Y() {
        o2 o2VarQ = this.queue.q();
        if (o2VarQ == null) {
            return;
        }
        int i10 = 0;
        if (o2VarQ.j() != null && !this.pendingPauseAtEndOfPeriod) {
            if (L()) {
                if (o2VarQ.j().prepared || this.rendererPositionUs >= o2VarQ.j().m()) {
                    com.google.android.exoplayer2.trackselection.c0 c0VarO = o2VarQ.o();
                    o2 o2VarC = this.queue.c();
                    com.google.android.exoplayer2.trackselection.c0 c0VarO2 = o2VarC.o();
                    z3 z3Var = this.playbackInfo.timeline;
                    l1(z3Var, o2VarC.info.id, z3Var, o2VarQ.info.id, -9223372036854775807L);
                    if (o2VarC.prepared && o2VarC.mediaPeriod.readDiscontinuity() != -9223372036854775807L) {
                        G0(o2VarC.m());
                        return;
                    }
                    for (int i11 = 0; i11 < this.renderers.length; i11++) {
                        boolean zC = c0VarO.c(i11);
                        boolean zC2 = c0VarO2.c(i11);
                        if (zC && !this.renderers[i11].isCurrentStreamFinal()) {
                            boolean z6 = this.rendererCapabilities[i11].getTrackType() == -2;
                            p3 p3Var = c0VarO.rendererConfigurations[i11];
                            p3 p3Var2 = c0VarO2.rendererConfigurations[i11];
                            if (!zC2 || !p3Var2.equals(p3Var) || z6) {
                                H0(this.renderers[i11], o2VarC.m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!o2VarQ.info.isFinal && !this.pendingPauseAtEndOfPeriod) {
            return;
        }
        while (true) {
            m3[] m3VarArr = this.renderers;
            if (i10 >= m3VarArr.length) {
                return;
            }
            m3 m3Var = m3VarArr[i10];
            com.google.android.exoplayer2.source.w0 w0Var = o2VarQ.sampleStreams[i10];
            if (w0Var != null && m3Var.getStream() == w0Var && m3Var.hasReadStreamToEnd()) {
                long j6 = o2VarQ.info.durationUs;
                H0(m3Var, (j6 == -9223372036854775807L || j6 == Long.MIN_VALUE) ? -9223372036854775807L : o2VarQ.l() + o2VarQ.info.durationUs);
            }
            i10++;
        }
    }

    private void Z() throws q {
        o2 o2VarQ = this.queue.q();
        if (o2VarQ == null || this.queue.p() == o2VarQ || o2VarQ.allRenderersInCorrectState || !m0()) {
            return;
        }
        p();
    }

    private void a0() throws Throwable {
        F(this.mediaSourceList.i(), true);
    }

    private boolean a1() {
        a3 a3Var = this.playbackInfo;
        return a3Var.playWhenReady && a3Var.playbackSuppressionReason == 0;
    }

    private void b0(c cVar) throws Throwable {
        this.playbackInfoUpdate.b(1);
        F(this.mediaSourceList.v(cVar.fromIndex, cVar.toIndex, cVar.newFromIndex, cVar.shuffleOrder), false);
    }

    private boolean b1(boolean z6) {
        if (this.enabledRendererCount == 0) {
            return P();
        }
        if (!z6) {
            return false;
        }
        a3 a3Var = this.playbackInfo;
        if (!a3Var.isLoading) {
            return true;
        }
        long jB = c1(a3Var.timeline, this.queue.p().info.id) ? this.livePlaybackSpeedControl.b() : -9223372036854775807L;
        o2 o2VarJ = this.queue.j();
        return (o2VarJ.q() && o2VarJ.info.isFinal) || (o2VarJ.info.id.b() && !o2VarJ.prepared) || this.loadControl.c(A(), this.mediaClock.getPlaybackParameters().speed, this.isRebuffering, jB);
    }

    private void c0() {
        for (o2 o2VarP = this.queue.p(); o2VarP != null; o2VarP = o2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.s sVar : o2VarP.o().selections) {
                if (sVar != null) {
                    sVar.a();
                }
            }
        }
    }

    private void d0(boolean z6) {
        for (o2 o2VarP = this.queue.p(); o2VarP != null; o2VarP = o2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.s sVar : o2VarP.o().selections) {
                if (sVar != null) {
                    sVar.c(z6);
                }
            }
        }
    }

    private void e0() {
        for (o2 o2VarP = this.queue.p(); o2VarP != null; o2VarP = o2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.s sVar : o2VarP.o().selections) {
                if (sVar != null) {
                    sVar.b();
                }
            }
        }
    }

    private void g1() throws q {
        this.mediaClock.g();
        for (m3 m3Var : this.renderers) {
            if (O(m3Var)) {
                r(m3Var);
            }
        }
    }

    private void h0() {
        this.playbackInfoUpdate.b(1);
        o0(false, false, false, true);
        this.loadControl.onPrepared();
        X0(this.playbackInfo.timeline.u() ? 4 : 2);
        this.mediaSourceList.w(this.bandwidthMeter.d());
        this.handler.sendEmptyMessage(2);
    }

    private void h1() {
        o2 o2VarJ = this.queue.j();
        boolean z6 = this.shouldContinueLoading || (o2VarJ != null && o2VarJ.mediaPeriod.isLoading());
        a3 a3Var = this.playbackInfo;
        if (z6 != a3Var.isLoading) {
            this.playbackInfo = a3Var.a(z6);
        }
    }

    private void i(b bVar, int i10) throws Throwable {
        this.playbackInfoUpdate.b(1);
        u2 u2Var = this.mediaSourceList;
        if (i10 == -1) {
            i10 = u2Var.q();
        }
        F(u2Var.f(i10, bVar.mediaSourceHolders, bVar.shuffleOrder), false);
    }

    private void i1(com.google.android.exoplayer2.source.h1 h1Var, com.google.android.exoplayer2.trackselection.c0 c0Var) {
        this.loadControl.b(this.renderers, h1Var, c0Var.selections);
    }

    private void j1() throws q, IOException {
        if (this.playbackInfo.timeline.u() || !this.mediaSourceList.s()) {
            return;
        }
        W();
        Y();
        Z();
        X();
    }

    private void k0(int i10, int i11, com.google.android.exoplayer2.source.y0 y0Var) throws Throwable {
        this.playbackInfoUpdate.b(1);
        F(this.mediaSourceList.A(i10, i11, y0Var), false);
    }

    private void k1() throws q {
        o2 o2VarP = this.queue.p();
        if (o2VarP == null) {
            return;
        }
        long discontinuity = o2VarP.prepared ? o2VarP.mediaPeriod.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != -9223372036854775807L) {
            q0(discontinuity);
            if (discontinuity != this.playbackInfo.positionUs) {
                a3 a3Var = this.playbackInfo;
                this.playbackInfo = J(a3Var.periodId, discontinuity, a3Var.requestedContentPositionUs, discontinuity, true, 5);
            }
        } else {
            long jH = this.mediaClock.h(o2VarP != this.queue.q());
            this.rendererPositionUs = jH;
            long jY = o2VarP.y(jH);
            V(this.playbackInfo.positionUs, jY);
            this.playbackInfo.positionUs = jY;
        }
        this.playbackInfo.bufferedPositionUs = this.queue.j().i();
        this.playbackInfo.totalBufferedDurationUs = A();
        a3 a3Var2 = this.playbackInfo;
        if (a3Var2.playWhenReady && a3Var2.playbackState == 3 && c1(a3Var2.timeline, a3Var2.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float fA = this.livePlaybackSpeedControl.a(u(), A());
            if (this.mediaClock.getPlaybackParameters().speed != fA) {
                this.mediaClock.b(this.playbackInfo.playbackParameters.e(fA));
                H(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01a2  */
    private void m() throws q, IOException {
        boolean z6;
        boolean z10;
        int i10;
        long jUptimeMillis = this.clock.uptimeMillis();
        this.handler.removeMessages(2);
        j1();
        int i11 = this.playbackInfo.playbackState;
        if (i11 == 1 || i11 == 4) {
            return;
        }
        o2 o2VarP = this.queue.p();
        if (o2VarP == null) {
            x0(jUptimeMillis, 10L);
            return;
        }
        com.google.android.exoplayer2.util.m0.a("doSomeWork");
        k1();
        if (o2VarP.prepared) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            o2VarP.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            z6 = true;
            z10 = true;
            int i12 = 0;
            while (true) {
                m3[] m3VarArr = this.renderers;
                if (i12 >= m3VarArr.length) {
                    break;
                }
                m3 m3Var = m3VarArr[i12];
                if (O(m3Var)) {
                    m3Var.render(this.rendererPositionUs, jElapsedRealtime);
                    z6 = z6 && m3Var.isEnded();
                    boolean z11 = o2VarP.sampleStreams[i12] != m3Var.getStream();
                    boolean z12 = z11 || (!z11 && m3Var.hasReadStreamToEnd()) || m3Var.isReady() || m3Var.isEnded();
                    z10 = z10 && z12;
                    if (!z12) {
                        m3Var.maybeThrowStreamError();
                    }
                }
                i12++;
            }
        } else {
            o2VarP.mediaPeriod.maybeThrowPrepareError();
            z6 = true;
            z10 = true;
        }
        long j6 = o2VarP.info.durationUs;
        boolean z13 = z6 && o2VarP.prepared && (j6 == -9223372036854775807L || j6 <= this.playbackInfo.positionUs);
        if (z13 && this.pendingPauseAtEndOfPeriod) {
            this.pendingPauseAtEndOfPeriod = false;
            O0(false, this.playbackInfo.playbackSuppressionReason, false, 5);
        }
        if (z13 && o2VarP.info.isFinal) {
            X0(4);
            g1();
        } else if (this.playbackInfo.playbackState == 2 && b1(z10)) {
            X0(3);
            this.pendingRecoverableRendererError = null;
            if (a1()) {
                d1();
            }
        } else if (this.playbackInfo.playbackState == 3 && (this.enabledRendererCount != 0 ? !z10 : !P())) {
            this.isRebuffering = a1();
            X0(2);
            if (this.isRebuffering) {
                e0();
                this.livePlaybackSpeedControl.c();
            }
            g1();
        }
        if (this.playbackInfo.playbackState == 2) {
            int i13 = 0;
            while (true) {
                m3[] m3VarArr2 = this.renderers;
                if (i13 >= m3VarArr2.length) {
                    break;
                }
                if (O(m3VarArr2[i13]) && this.renderers[i13].getStream() == o2VarP.sampleStreams[i13]) {
                    this.renderers[i13].maybeThrowStreamError();
                }
                i13++;
            }
            a3 a3Var = this.playbackInfo;
            if (a3Var.isLoading || a3Var.totalBufferedDurationUs >= PLAYBACK_BUFFER_EMPTY_THRESHOLD_US || !N()) {
                this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
            } else if (this.playbackMaybeBecameStuckAtMs == -9223372036854775807L) {
                this.playbackMaybeBecameStuckAtMs = this.clock.elapsedRealtime();
            } else if (this.clock.elapsedRealtime() - this.playbackMaybeBecameStuckAtMs >= PLAYBACK_STUCK_AFTER_MS) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
        }
        boolean z14 = a1() && this.playbackInfo.playbackState == 3;
        boolean z15 = this.offloadSchedulingEnabled && this.requestForRendererSleep && z14;
        a3 a3Var2 = this.playbackInfo;
        if (a3Var2.sleepingForOffload != z15) {
            this.playbackInfo = a3Var2.h(z15);
        }
        this.requestForRendererSleep = false;
        if (!z15 && (i10 = this.playbackInfo.playbackState) != 4) {
            if (z14 || i10 == 2) {
                x0(jUptimeMillis, 10L);
            } else if (i10 == 3 && this.enabledRendererCount != 0) {
                x0(jUptimeMillis, 1000L);
            }
        }
        com.google.android.exoplayer2.util.m0.c();
    }

    private boolean m0() throws q {
        o2 o2VarQ = this.queue.q();
        com.google.android.exoplayer2.trackselection.c0 c0VarO = o2VarQ.o();
        int i10 = 0;
        boolean z6 = false;
        while (true) {
            m3[] m3VarArr = this.renderers;
            if (i10 >= m3VarArr.length) {
                return !z6;
            }
            m3 m3Var = m3VarArr[i10];
            if (O(m3Var)) {
                boolean z10 = m3Var.getStream() != o2VarQ.sampleStreams[i10];
                if (!c0VarO.c(i10) || z10) {
                    if (!m3Var.isCurrentStreamFinal()) {
                        m3Var.g(v(c0VarO.selections[i10]), o2VarQ.sampleStreams[i10], o2VarQ.m(), o2VarQ.l());
                    } else if (m3Var.isEnded()) {
                        l(m3Var);
                    } else {
                        z6 = true;
                    }
                }
            }
            i10++;
        }
    }

    private void m1(float f6) {
        for (o2 o2VarP = this.queue.p(); o2VarP != null; o2VarP = o2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.s sVar : o2VarP.o().selections) {
                if (sVar != null) {
                    sVar.onPlaybackSpeed(f6);
                }
            }
        }
    }

    private void n(int i10, boolean z6) throws q {
        m3 m3Var = this.renderers[i10];
        if (O(m3Var)) {
            return;
        }
        o2 o2VarQ = this.queue.q();
        boolean z10 = o2VarQ == this.queue.p();
        com.google.android.exoplayer2.trackselection.c0 c0VarO = o2VarQ.o();
        p3 p3Var = c0VarO.rendererConfigurations[i10];
        a2[] a2VarArrV = v(c0VarO.selections[i10]);
        boolean z11 = a1() && this.playbackInfo.playbackState == 3;
        boolean z12 = !z6 && z11;
        this.enabledRendererCount++;
        this.renderersToReset.add(m3Var);
        m3Var.h(p3Var, a2VarArrV, o2VarQ.sampleStreams[i10], this.rendererPositionUs, z12, z10, o2VarQ.m(), o2VarQ.l());
        m3Var.handleMessage(11, new a());
        this.mediaClock.c(m3Var);
        if (z11) {
            m3Var.start();
        }
    }

    private void n0() throws q {
        float f6 = this.mediaClock.getPlaybackParameters().speed;
        o2 o2VarQ = this.queue.q();
        boolean z6 = true;
        for (o2 o2VarP = this.queue.p(); o2VarP != null && o2VarP.prepared; o2VarP = o2VarP.j()) {
            com.google.android.exoplayer2.trackselection.c0 c0VarV = o2VarP.v(f6, this.playbackInfo.timeline);
            if (!c0VarV.a(o2VarP.o())) {
                if (z6) {
                    o2 o2VarP2 = this.queue.p();
                    boolean z10 = this.queue.z(o2VarP2);
                    boolean[] zArr = new boolean[this.renderers.length];
                    long jB = o2VarP2.b(c0VarV, this.playbackInfo.positionUs, z10, zArr);
                    a3 a3Var = this.playbackInfo;
                    boolean z11 = (a3Var.playbackState == 4 || jB == a3Var.positionUs) ? false : true;
                    a3 a3Var2 = this.playbackInfo;
                    this.playbackInfo = J(a3Var2.periodId, jB, a3Var2.requestedContentPositionUs, a3Var2.discontinuityStartPositionUs, z11, 5);
                    if (z11) {
                        q0(jB);
                    }
                    boolean[] zArr2 = new boolean[this.renderers.length];
                    int i10 = 0;
                    while (true) {
                        m3[] m3VarArr = this.renderers;
                        if (i10 >= m3VarArr.length) {
                            break;
                        }
                        m3 m3Var = m3VarArr[i10];
                        boolean zO = O(m3Var);
                        zArr2[i10] = zO;
                        com.google.android.exoplayer2.source.w0 w0Var = o2VarP2.sampleStreams[i10];
                        if (zO) {
                            if (w0Var != m3Var.getStream()) {
                                l(m3Var);
                            } else if (zArr[i10]) {
                                m3Var.resetPosition(this.rendererPositionUs);
                            }
                        }
                        i10++;
                    }
                    q(zArr2);
                } else {
                    this.queue.z(o2VarP);
                    if (o2VarP.prepared) {
                        o2VarP.a(c0VarV, Math.max(o2VarP.info.startPositionUs, o2VarP.y(this.rendererPositionUs)), false);
                    }
                }
                E(true);
                if (this.playbackInfo.playbackState != 4) {
                    T();
                    k1();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (o2VarP == o2VarQ) {
                z6 = false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a6 A[PHI: r4 r5 r7
      0x00a6: PHI (r4v3 com.google.android.exoplayer2.source.b0$b) = (r4v2 com.google.android.exoplayer2.source.b0$b), (r4v9 com.google.android.exoplayer2.source.b0$b) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a6: PHI (r5v2 long) = (r5v1 long), (r5v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a6: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    private void o0(boolean z6, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        this.handler.removeMessages(2);
        this.pendingRecoverableRendererError = null;
        this.isRebuffering = false;
        this.mediaClock.g();
        this.rendererPositionUs = 1000000000000L;
        for (m3 m3Var : this.renderers) {
            try {
                l(m3Var);
            } catch (q | RuntimeException e2) {
                com.google.android.exoplayer2.util.t.d(TAG, "Disable failed.", e2);
            }
        }
        if (z6) {
            for (m3 m3Var2 : this.renderers) {
                if (this.renderersToReset.remove(m3Var2)) {
                    try {
                        m3Var2.reset();
                    } catch (RuntimeException e6) {
                        com.google.android.exoplayer2.util.t.d(TAG, "Reset failed.", e6);
                    }
                }
            }
        }
        this.enabledRendererCount = 0;
        a3 a3Var = this.playbackInfo;
        com.google.android.exoplayer2.source.b0.b bVar = a3Var.periodId;
        long jLongValue = a3Var.positionUs;
        long j6 = (this.playbackInfo.periodId.b() || Q(this.playbackInfo, this.period)) ? this.playbackInfo.requestedContentPositionUs : this.playbackInfo.positionUs;
        if (z10) {
            this.pendingInitialSeekPosition = null;
            Pair<com.google.android.exoplayer2.source.b0.b, Long> pairY = y(this.playbackInfo.timeline);
            bVar = (com.google.android.exoplayer2.source.b0.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            j6 = -9223372036854775807L;
            if (bVar.equals(this.playbackInfo.periodId)) {
                z13 = false;
            } else {
                z13 = true;
            }
        } else {
            z13 = false;
        }
        com.google.android.exoplayer2.source.b0.b bVar2 = bVar;
        long j10 = jLongValue;
        this.queue.f();
        this.shouldContinueLoading = false;
        a3 a3Var2 = this.playbackInfo;
        z3 z3Var = a3Var2.timeline;
        int i10 = a3Var2.playbackState;
        q qVar = z12 ? null : a3Var2.playbackError;
        com.google.android.exoplayer2.source.h1 h1Var = z13 ? com.google.android.exoplayer2.source.h1.EMPTY : a3Var2.trackGroups;
        com.google.android.exoplayer2.trackselection.c0 c0Var = z13 ? this.emptyTrackSelectorResult : a3Var2.trackSelectorResult;
        List listX = z13 ? com.google.common.collect.a0.x() : a3Var2.staticMetadata;
        a3 a3Var3 = this.playbackInfo;
        this.playbackInfo = new a3(z3Var, bVar2, j6, j10, i10, qVar, false, h1Var, c0Var, listX, bVar2, a3Var3.playWhenReady, a3Var3.playbackSuppressionReason, a3Var3.playbackParameters, j10, 0L, j10, false);
        if (z11) {
            this.mediaSourceList.y();
        }
    }

    private void p() throws q {
        q(new boolean[this.renderers.length]);
    }

    private void p0() {
        o2 o2VarP = this.queue.p();
        this.pendingPauseAtEndOfPeriod = o2VarP != null && o2VarP.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private void q(boolean[] zArr) throws q {
        o2 o2VarQ = this.queue.q();
        com.google.android.exoplayer2.trackselection.c0 c0VarO = o2VarQ.o();
        for (int i10 = 0; i10 < this.renderers.length; i10++) {
            if (!c0VarO.c(i10) && this.renderersToReset.remove(this.renderers[i10])) {
                this.renderers[i10].reset();
            }
        }
        for (int i11 = 0; i11 < this.renderers.length; i11++) {
            if (c0VarO.c(i11)) {
                n(i11, zArr[i11]);
            }
        }
        o2VarQ.allRenderersInCorrectState = true;
    }

    private void q0(long j6) throws q {
        o2 o2VarP = this.queue.p();
        long jZ = o2VarP == null ? j6 + 1000000000000L : o2VarP.z(j6);
        this.rendererPositionUs = jZ;
        this.mediaClock.d(jZ);
        for (m3 m3Var : this.renderers) {
            if (O(m3Var)) {
                m3Var.resetPosition(this.rendererPositionUs);
            }
        }
        c0();
    }

    private static void r0(z3 z3Var, d dVar, z3.d dVar2, z3.b bVar) {
        int i10 = z3Var.r(z3Var.l(dVar.resolvedPeriodUid, bVar).windowIndex, dVar2).lastPeriodIndex;
        Object obj = z3Var.k(i10, bVar, true).uid;
        long j6 = bVar.durationUs;
        dVar.b(i10, j6 != -9223372036854775807L ? j6 - 1 : Long.MAX_VALUE, obj);
    }

    private com.google.common.collect.a0<Metadata> t(com.google.android.exoplayer2.trackselection.s[] sVarArr) {
        com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
        boolean z6 = false;
        for (com.google.android.exoplayer2.trackselection.s sVar : sVarArr) {
            if (sVar != null) {
                Metadata metadata = sVar.getFormat(0).metadata;
                if (metadata == null) {
                    aVar.d(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.d(metadata);
                    z6 = true;
                }
            }
        }
        return z6 ? aVar.k() : com.google.common.collect.a0.x();
    }

    private long u() {
        a3 a3Var = this.playbackInfo;
        return w(a3Var.timeline, a3Var.periodId.periodUid, a3Var.positionUs);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0156  */
    /* JADX WARN: Code duplicated, block: B:52:0x0174  */
    /* JADX WARN: Code duplicated, block: B:60:0x018a  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:82:0x01da  */
    /* JADX WARN: Code duplicated, block: B:83:0x01df  */
    private static g u0(z3 z3Var, a3 a3Var, @Nullable h hVar, r2 r2Var, int i10, boolean z6, z3.d dVar, z3.b bVar) {
        com.google.android.exoplayer2.source.b0.b bVar2;
        int i11;
        com.google.android.exoplayer2.source.b0.b bVar3;
        int i12;
        long jLongValue;
        boolean z10;
        boolean z11;
        boolean z12;
        int iE;
        int iE2;
        boolean z13;
        long j6;
        com.google.android.exoplayer2.source.b0.b bVarB;
        int i13;
        boolean z14;
        boolean z15;
        com.google.android.exoplayer2.source.b0.b bVar4;
        int i14;
        int iE3;
        boolean z16;
        boolean z17;
        boolean z18;
        if (z3Var.u()) {
            return new g(a3.k(), 0L, -9223372036854775807L, false, true, false);
        }
        com.google.android.exoplayer2.source.b0.b bVar5 = a3Var.periodId;
        Object obj = bVar5.periodUid;
        boolean zQ = Q(a3Var, bVar);
        long j10 = (a3Var.periodId.b() || zQ) ? a3Var.requestedContentPositionUs : a3Var.positionUs;
        if (hVar != null) {
            bVar2 = bVar5;
            i11 = -1;
            Pair<Object, Long> pairV0 = v0(z3Var, hVar, true, i10, z6, dVar, bVar);
            if (pairV0 == null) {
                iE3 = z3Var.e(z6);
                jLongValue = j10;
                z16 = false;
                z17 = false;
                z18 = true;
            } else {
                if (hVar.windowPositionUs == -9223372036854775807L) {
                    iE3 = z3Var.l(pairV0.first, bVar).windowIndex;
                    jLongValue = j10;
                    z16 = false;
                } else {
                    obj = pairV0.first;
                    jLongValue = ((Long) pairV0.second).longValue();
                    iE3 = -1;
                    z16 = true;
                }
                z17 = a3Var.playbackState == 4;
                z18 = false;
            }
            z12 = z16;
            z10 = z17;
            z11 = z18;
            i12 = iE3;
        } else {
            bVar2 = bVar5;
            i11 = -1;
            if (!a3Var.timeline.u()) {
                if (z3Var.f(obj) == -1) {
                    Object objW0 = w0(dVar, bVar, i10, z6, obj, a3Var.timeline, z3Var);
                    if (objW0 == null) {
                        iE2 = z3Var.e(z6);
                        z13 = true;
                    } else {
                        iE2 = z3Var.l(objW0, bVar).windowIndex;
                        z13 = false;
                    }
                    i12 = iE2;
                    z11 = z13;
                    jLongValue = j10;
                    z10 = false;
                    z12 = false;
                } else if (j10 == -9223372036854775807L) {
                    iE = z3Var.l(obj, bVar).windowIndex;
                } else if (zQ) {
                    bVar3 = bVar2;
                    a3Var.timeline.l(bVar3.periodUid, bVar);
                    if (a3Var.timeline.r(bVar.windowIndex, dVar).firstPeriodIndex == a3Var.timeline.f(bVar3.periodUid)) {
                        Pair<Object, Long> pairN = z3Var.n(dVar, bVar, z3Var.l(obj, bVar).windowIndex, j10 + bVar.q());
                        obj = pairN.first;
                        jLongValue = ((Long) pairN.second).longValue();
                    } else {
                        jLongValue = j10;
                    }
                    i12 = -1;
                    z10 = false;
                    z11 = false;
                    z12 = true;
                } else {
                    bVar3 = bVar2;
                    i12 = -1;
                    jLongValue = j10;
                    z10 = false;
                    z11 = false;
                    z12 = false;
                }
                if (i12 != i11) {
                    Pair<Object, Long> pairN2 = z3Var.n(dVar, bVar, i12, -9223372036854775807L);
                    obj = pairN2.first;
                    jLongValue = ((Long) pairN2.second).longValue();
                    j6 = -9223372036854775807L;
                } else {
                    j6 = jLongValue;
                }
                bVarB = r2Var.B(z3Var, obj, jLongValue);
                i13 = bVarB.nextAdGroupIndex;
                if (i13 != i11 || ((i14 = bVar3.nextAdGroupIndex) != i11 && i13 >= i14)) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                z15 = (bVar3.periodUid.equals(obj) || bVar3.b() || bVarB.b() || !z14) ? false : true;
                bVar4 = bVar3;
                boolean zM = M(zQ, bVar3, j10, bVarB, z3Var.l(obj, bVar), j6);
                if (z15 || zM) {
                    bVarB = bVar4;
                }
                if (bVarB.b()) {
                    if (bVarB.equals(bVar4)) {
                        jLongValue = a3Var.positionUs;
                    } else {
                        z3Var.l(bVarB.periodUid, bVar);
                        if (bVarB.adIndexInAdGroup == bVar.n(bVarB.adGroupIndex)) {
                            jLongValue = bVar.j();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarB, jLongValue, j6, z10, z11, z12);
            }
            iE = z3Var.e(z6);
            i12 = iE;
            jLongValue = j10;
            z10 = false;
            z11 = false;
            z12 = false;
        }
        bVar3 = bVar2;
        if (i12 != i11) {
            Pair<Object, Long> pairN3 = z3Var.n(dVar, bVar, i12, -9223372036854775807L);
            obj = pairN3.first;
            jLongValue = ((Long) pairN3.second).longValue();
            j6 = -9223372036854775807L;
        } else {
            j6 = jLongValue;
        }
        bVarB = r2Var.B(z3Var, obj, jLongValue);
        i13 = bVarB.nextAdGroupIndex;
        if (i13 != i11) {
            z14 = true;
        } else {
            z14 = true;
        }
        if (bVar3.periodUid.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean zM2 = M(zQ, bVar3, j10, bVarB, z3Var.l(obj, bVar), j6);
        if (z15) {
            bVarB = bVar4;
        } else {
            bVarB = bVar4;
        }
        if (bVarB.b()) {
            if (bVarB.equals(bVar4)) {
                jLongValue = a3Var.positionUs;
            } else {
                z3Var.l(bVarB.periodUid, bVar);
                if (bVarB.adIndexInAdGroup == bVar.n(bVarB.adGroupIndex)) {
                    jLongValue = bVar.j();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarB, jLongValue, j6, z10, z11, z12);
    }

    private long w(z3 z3Var, Object obj, long j6) {
        z3Var.r(z3Var.l(obj, this.period).windowIndex, this.window);
        z3.d dVar = this.window;
        if (dVar.windowStartTimeMs != -9223372036854775807L && dVar.i()) {
            z3.d dVar2 = this.window;
            if (dVar2.isDynamic) {
                return com.google.android.exoplayer2.util.o0.w0(dVar2.d() - this.window.windowStartTimeMs) - (j6 + this.period.q());
            }
        }
        return -9223372036854775807L;
    }

    private long x() {
        o2 o2VarQ = this.queue.q();
        if (o2VarQ == null) {
            return 0L;
        }
        long jL = o2VarQ.l();
        if (!o2VarQ.prepared) {
            return jL;
        }
        int i10 = 0;
        while (true) {
            m3[] m3VarArr = this.renderers;
            if (i10 >= m3VarArr.length) {
                return jL;
            }
            if (O(m3VarArr[i10]) && this.renderers[i10].getStream() == o2VarQ.sampleStreams[i10]) {
                long jC = this.renderers[i10].c();
                if (jC == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jL = Math.max(jC, jL);
            }
            i10++;
        }
    }

    private void x0(long j6, long j10) {
        this.handler.sendEmptyMessageAtTime(2, j6 + j10);
    }

    private void z0(boolean z6) throws q {
        com.google.android.exoplayer2.source.b0.b bVar = this.queue.p().info.id;
        long jC0 = C0(bVar, this.playbackInfo.positionUs, true, false);
        if (jC0 != this.playbackInfo.positionUs) {
            a3 a3Var = this.playbackInfo;
            this.playbackInfo = J(bVar, jC0, a3Var.requestedContentPositionUs, a3Var.discontinuityStartPositionUs, z6, 5);
        }
    }

    public void K0(List<u2.c> list, int i10, long j6, com.google.android.exoplayer2.source.y0 y0Var) {
        this.handler.obtainMessage(17, new b(list, y0Var, i10, j6, null)).a();
    }

    public void N0(boolean z6, int i10) {
        this.handler.obtainMessage(1, z6 ? 1 : 0, i10).a();
    }

    public void P0(c3 c3Var) {
        this.handler.obtainMessage(4, c3Var).a();
    }

    public void R0(int i10) {
        this.handler.obtainMessage(11, i10, 0).a();
    }

    public void U0(boolean z6) {
        this.handler.obtainMessage(12, z6 ? 1 : 0, 0).a();
    }

    @Override // com.google.android.exoplayer2.u2.d
    public void a() {
        this.handler.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.source.y.a
    public void d(com.google.android.exoplayer2.source.y yVar) {
        this.handler.obtainMessage(8, yVar).a();
    }

    public void e1() {
        this.handler.obtainMessage(6).a();
    }

    @Override // com.google.android.exoplayer2.source.x0.a
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public void c(com.google.android.exoplayer2.source.y yVar) {
        this.handler.obtainMessage(9, yVar).a();
    }

    public void g0() {
        this.handler.obtainMessage(0).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        int i10;
        o2 o2VarQ;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    h0();
                    break;
                case 1:
                    O0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    m();
                    break;
                case 3:
                    A0((h) message.obj);
                    break;
                case 4:
                    Q0((c3) message.obj);
                    break;
                case 5:
                    T0((r3) message.obj);
                    break;
                case 6:
                    f1(false, true);
                    break;
                case 7:
                    j0();
                    return true;
                case 8:
                    G((com.google.android.exoplayer2.source.y) message.obj);
                    break;
                case 9:
                    C((com.google.android.exoplayer2.source.y) message.obj);
                    break;
                case 10:
                    n0();
                    break;
                case 11:
                    S0(message.arg1);
                    break;
                case 12:
                    V0(message.arg1 != 0);
                    break;
                case 13:
                    I0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    D0((h3) message.obj);
                    break;
                case 15:
                    F0((h3) message.obj);
                    break;
                case 16:
                    I((c3) message.obj, false);
                    break;
                case 17:
                    J0((b) message.obj);
                    break;
                case 18:
                    i((b) message.obj, message.arg1);
                    break;
                case 19:
                    b0((c) message.obj);
                    break;
                case 20:
                    k0(message.arg1, message.arg2, (com.google.android.exoplayer2.source.y0) message.obj);
                    break;
                case 21:
                    W0((com.google.android.exoplayer2.source.y0) message.obj);
                    break;
                case 22:
                    a0();
                    break;
                case 23:
                    M0(message.arg1 != 0);
                    break;
                case 24:
                    L0(message.arg1 == 1);
                    break;
                case 25:
                    j();
                    break;
                default:
                    return false;
            }
        } catch (com.google.android.exoplayer2.drm.n.a e2) {
            D(e2, e2.errorCode);
        } catch (q e6) {
            e = e6;
            if (e.type == 1 && (o2VarQ = this.queue.q()) != null) {
                e = e.f(o2VarQ.info.id);
            }
            if (e.isRecoverable && this.pendingRecoverableRendererError == null) {
                com.google.android.exoplayer2.util.t.j(TAG, "Recoverable renderer error", e);
                this.pendingRecoverableRendererError = e;
                com.google.android.exoplayer2.util.p pVar = this.handler;
                pVar.b(pVar.obtainMessage(25, e));
            } else {
                q qVar = this.pendingRecoverableRendererError;
                if (qVar != null) {
                    qVar.addSuppressed(e);
                    e = this.pendingRecoverableRendererError;
                }
                com.google.android.exoplayer2.util.t.d(TAG, "Playback error", e);
                f1(true, false);
                this.playbackInfo = this.playbackInfo.e(e);
            }
        } catch (com.google.android.exoplayer2.source.b e7) {
            D(e7, 1002);
        } catch (com.google.android.exoplayer2.upstream.l e10) {
            D(e10, e10.reason);
        } catch (v2 e11) {
            int i12 = e11.dataType;
            if (i12 == 1) {
                i10 = e11.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i12 == 4) {
                    i10 = e11.contentIsMalformed ? 3002 : 3004;
                }
                D(e11, i11);
            }
            i11 = i10;
            D(e11, i11);
        } catch (IOException e12) {
            D(e12, 2000);
        } catch (RuntimeException e13) {
            q qVarJ = q.j(e13, ((e13 instanceof IllegalStateException) || (e13 instanceof IllegalArgumentException)) ? 1004 : 1000);
            com.google.android.exoplayer2.util.t.d(TAG, "Playback error", qVarJ);
            f1(true, false);
            this.playbackInfo = this.playbackInfo.e(qVarJ);
        }
        U();
        return true;
    }

    public void l0(int i10, int i11, com.google.android.exoplayer2.source.y0 y0Var) {
        this.handler.obtainMessage(20, i10, i11, y0Var).a();
    }

    @Override // com.google.android.exoplayer2.l.a
    public void o(c3 c3Var) {
        this.handler.obtainMessage(16, c3Var).a();
    }

    @Override // com.google.android.exoplayer2.trackselection.b0.a
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    public void y0(z3 z3Var, int i10, long j6) {
        this.handler.obtainMessage(3, new h(z3Var, i10, j6)).a();
    }

    private long C0(com.google.android.exoplayer2.source.b0.b bVar, long j6, boolean z6, boolean z10) throws q {
        g1();
        this.isRebuffering = false;
        if (z10 || this.playbackInfo.playbackState == 3) {
            X0(2);
        }
        o2 o2VarP = this.queue.p();
        o2 o2VarJ = o2VarP;
        while (o2VarJ != null && !bVar.equals(o2VarJ.info.id)) {
            o2VarJ = o2VarJ.j();
        }
        if (z6 || o2VarP != o2VarJ || (o2VarJ != null && o2VarJ.z(j6) < 0)) {
            for (m3 m3Var : this.renderers) {
                l(m3Var);
            }
            if (o2VarJ != null) {
                while (this.queue.p() != o2VarJ) {
                    this.queue.b();
                }
                this.queue.z(o2VarJ);
                o2VarJ.x(1000000000000L);
                p();
            }
        }
        if (o2VarJ != null) {
            this.queue.z(o2VarJ);
            if (!o2VarJ.prepared) {
                o2VarJ.info = o2VarJ.info.b(j6);
            } else if (o2VarJ.hasEnabledTracks) {
                j6 = o2VarJ.mediaPeriod.seekToUs(j6);
                o2VarJ.mediaPeriod.discardBuffer(j6 - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            }
            q0(j6);
            T();
        } else {
            this.queue.f();
            q0(j6);
        }
        E(false);
        this.handler.sendEmptyMessage(2);
        return j6;
    }

    private void D(IOException iOException, int i10) {
        q qVarH = q.h(iOException, i10);
        o2 o2VarP = this.queue.p();
        if (o2VarP != null) {
            qVarH = qVarH.f(o2VarP.info.id);
        }
        com.google.android.exoplayer2.util.t.d(TAG, "Playback error", qVarH);
        f1(false, false);
        this.playbackInfo = this.playbackInfo.e(qVarH);
    }

    private void D0(h3 h3Var) throws q {
        if (h3Var.f() == -9223372036854775807L) {
            E0(h3Var);
            return;
        }
        if (this.playbackInfo.timeline.u()) {
            this.pendingMessages.add(new d(h3Var));
            return;
        }
        d dVar = new d(h3Var);
        z3 z3Var = this.playbackInfo.timeline;
        if (s0(dVar, z3Var, z3Var, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            this.pendingMessages.add(dVar);
            Collections.sort(this.pendingMessages);
        } else {
            h3Var.k(false);
        }
    }

    private void E0(h3 h3Var) throws q {
        if (h3Var.c() == this.playbackLooper) {
            k(h3Var);
            int i10 = this.playbackInfo.playbackState;
            if (i10 == 3 || i10 == 2) {
                this.handler.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.handler.obtainMessage(15, h3Var).a();
    }

    private void F0(final h3 h3Var) {
        Looper looperC = h3Var.c();
        if (!looperC.getThread().isAlive()) {
            com.google.android.exoplayer2.util.t.i("TAG", "Trying to send message on a dead thread.");
            h3Var.k(false);
        } else {
            this.clock.createHandler(looperC, null).post(new Runnable() { // from class: com.google.android.exoplayer2.u1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1310a.S(h3Var);
                }
            });
        }
    }

    private void H0(m3 m3Var, long j6) {
        m3Var.setCurrentStreamFinal();
        if (m3Var instanceof com.google.android.exoplayer2.text.q) {
            ((com.google.android.exoplayer2.text.q) m3Var).J(j6);
        }
    }

    private boolean K(m3 m3Var, o2 o2Var) {
        o2 o2VarJ = o2Var.j();
        if (o2Var.info.isFollowedByTransitionToSameStream && o2VarJ.prepared && ((m3Var instanceof com.google.android.exoplayer2.text.q) || (m3Var instanceof com.google.android.exoplayer2.metadata.a) || m3Var.c() >= o2VarJ.m())) {
            return true;
        }
        return false;
    }

    private static boolean O(m3 m3Var) {
        if (m3Var.getState() != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(h3 h3Var) {
        try {
            k(h3Var);
        } catch (q e2) {
            com.google.android.exoplayer2.util.t.d(TAG, "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void T() {
        boolean zZ0 = Z0();
        this.shouldContinueLoading = zZ0;
        if (zZ0) {
            this.queue.j().d(this.rendererPositionUs);
        }
        h1();
    }

    private boolean Y0() {
        o2 o2VarP;
        o2 o2VarJ;
        if (!a1() || this.pendingPauseAtEndOfPeriod || (o2VarP = this.queue.p()) == null || (o2VarJ = o2VarP.j()) == null || this.rendererPositionUs < o2VarJ.m() || !o2VarJ.allRenderersInCorrectState) {
            return false;
        }
        return true;
    }

    private boolean Z0() {
        long jY;
        if (!N()) {
            return false;
        }
        o2 o2VarJ = this.queue.j();
        long jB = B(o2VarJ.k());
        if (o2VarJ == this.queue.p()) {
            jY = o2VarJ.y(this.rendererPositionUs);
        } else {
            jY = o2VarJ.y(this.rendererPositionUs) - o2VarJ.info.startPositionUs;
        }
        long j6 = jY;
        boolean zA = this.loadControl.a(j6, jB, this.mediaClock.getPlaybackParameters().speed);
        if (!zA && jB < PLAYBACK_BUFFER_EMPTY_THRESHOLD_US) {
            if (this.backBufferDurationUs > 0 || this.retainBackBufferFromKeyframe) {
                this.queue.p().mediaPeriod.discardBuffer(this.playbackInfo.positionUs, false);
                return this.loadControl.a(j6, jB, this.mediaClock.getPlaybackParameters().speed);
            }
            return zA;
        }
        return zA;
    }

    private boolean c1(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar) {
        if (bVar.b() || z3Var.u()) {
            return false;
        }
        z3Var.r(z3Var.l(bVar.periodUid, this.period).windowIndex, this.window);
        if (!this.window.i()) {
            return false;
        }
        z3.d dVar = this.window;
        if (!dVar.isDynamic || dVar.windowStartTimeMs == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    private void k(h3 h3Var) throws q {
        if (h3Var.j()) {
            return;
        }
        try {
            h3Var.g().handleMessage(h3Var.i(), h3Var.e());
        } finally {
            h3Var.k(true);
        }
    }

    private void l(m3 m3Var) throws q {
        if (!O(m3Var)) {
            return;
        }
        this.mediaClock.a(m3Var);
        r(m3Var);
        m3Var.disable();
        this.enabledRendererCount--;
    }

    private void l1(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var2, com.google.android.exoplayer2.source.b0.b bVar2, long j6) {
        Object obj;
        c3 c3Var;
        if (!c1(z3Var, bVar)) {
            if (bVar.b()) {
                c3Var = c3.DEFAULT;
            } else {
                c3Var = this.playbackInfo.playbackParameters;
            }
            if (!this.mediaClock.getPlaybackParameters().equals(c3Var)) {
                this.mediaClock.b(c3Var);
                return;
            }
            return;
        }
        z3Var.r(z3Var.l(bVar.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.e((i2.g) com.google.android.exoplayer2.util.o0.j(this.window.liveConfiguration));
        if (j6 != -9223372036854775807L) {
            this.livePlaybackSpeedControl.d(w(z3Var, bVar.periodUid, j6));
            return;
        }
        Object obj2 = this.window.uid;
        if (!z3Var2.u()) {
            obj = z3Var2.r(z3Var2.l(bVar2.periodUid, this.period).windowIndex, this.window).uid;
        } else {
            obj = null;
        }
        if (!com.google.android.exoplayer2.util.o0.c(obj, obj2)) {
            this.livePlaybackSpeedControl.d(-9223372036854775807L);
        }
    }

    private void r(m3 m3Var) throws q {
        if (m3Var.getState() == 2) {
            m3Var.stop();
        }
    }

    private void t0(z3 z3Var, z3 z3Var2) {
        if (z3Var.u() && z3Var2.u()) {
            return;
        }
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!s0(this.pendingMessages.get(size), z3Var, z3Var2, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                this.pendingMessages.get(size).message.k(false);
                this.pendingMessages.remove(size);
            }
        }
        Collections.sort(this.pendingMessages);
    }

    @Nullable
    static Object w0(z3.d dVar, z3.b bVar, int i10, boolean z6, Object obj, z3 z3Var, z3 z3Var2) {
        int iF = z3Var.f(obj);
        int iM = z3Var.m();
        int iH = iF;
        int iF2 = -1;
        for (int i11 = 0; i11 < iM && iF2 == -1; i11++) {
            iH = z3Var.h(iH, bVar, dVar, i10, z6);
            if (iH == -1) {
                break;
            }
            iF2 = z3Var2.f(z3Var.q(iH));
        }
        if (iF2 == -1) {
            return null;
        }
        return z3Var2.q(iF2);
    }

    private Pair<com.google.android.exoplayer2.source.b0.b, Long> y(z3 z3Var) {
        long j6 = 0;
        if (z3Var.u()) {
            return Pair.create(a3.k(), 0L);
        }
        Pair<Object, Long> pairN = z3Var.n(this.window, this.period, z3Var.e(this.shuffleModeEnabled), -9223372036854775807L);
        com.google.android.exoplayer2.source.b0.b bVarB = this.queue.B(z3Var, pairN.first, 0L);
        long jLongValue = ((Long) pairN.second).longValue();
        if (bVarB.b()) {
            z3Var.l(bVarB.periodUid, this.period);
            if (bVarB.adIndexInAdGroup == this.period.n(bVarB.adGroupIndex)) {
                j6 = this.period.j();
            }
            jLongValue = j6;
        }
        return Pair.create(bVarB, Long.valueOf(jLongValue));
    }
}
