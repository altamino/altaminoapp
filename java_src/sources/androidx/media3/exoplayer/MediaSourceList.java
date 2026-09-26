package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
final class MediaSourceList {
    private static final String TAG = "MediaSourceList";
    private final HandlerWrapper eventHandler;
    private final AnalyticsCollector eventListener;
    private boolean isPrepared;
    private final MediaSourceListInfoRefreshListener mediaSourceListInfoListener;

    @Nullable
    private TransferListener mediaTransferListener;
    private final PlayerId playerId;
    private ShuffleOrder shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod = new IdentityHashMap<>();
    private final Map<Object, MediaSourceHolder> mediaSourceByUid = new HashMap();
    private final List<MediaSourceHolder> mediaSourceHolders = new ArrayList();
    private final HashMap<MediaSourceHolder, MediaSourceAndListener> childSources = new HashMap<>();
    private final Set<MediaSourceHolder> enabledMediaSourceHolders = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        private final MediaSourceHolder id;

        @Nullable
        private Pair<Integer, MediaSource.MediaPeriodId> M(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2 = null;
            if (mediaPeriodId != null) {
                MediaSource.MediaPeriodId mediaPeriodIdN = MediaSourceList.n(this.id, mediaPeriodId);
                if (mediaPeriodIdN == null) {
                    return null;
                }
                mediaPeriodId2 = mediaPeriodIdN;
            }
            return Pair.create(Integer.valueOf(MediaSourceList.s(this.id, i10)), mediaPeriodId2);
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public /* synthetic */ void O(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
            androidx.media3.exoplayer.drm.j.a(this, i10, mediaPeriodId);
        }

        public ForwardingEventListener(MediaSourceHolder mediaSourceHolder) {
            this.id = mediaSourceHolder;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void P(Pair pair, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.D(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Q(Pair pair) {
            MediaSourceList.this.eventListener.x(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void T(Pair pair) {
            MediaSourceList.this.eventListener.R(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void U(Pair pair) {
            MediaSourceList.this.eventListener.W(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(Pair pair, int i10) {
            MediaSourceList.this.eventListener.N(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Y(Pair pair, Exception exc) {
            MediaSourceList.this.eventListener.S(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Z(Pair pair) {
            MediaSourceList.this.eventListener.F(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a0(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.B(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b0(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.V(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c0(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
            MediaSourceList.this.eventListener.z(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, iOException, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d0(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.L(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e0(Pair pair, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.I(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) Assertions.e((MediaSource.MediaPeriodId) pair.second), mediaLoadData);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void B(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.z1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f712a.a0(pairM, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void D(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f299a.P(pairM, mediaLoadData);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void F(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.d2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f490a.Z(pairM);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void I(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.x1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f703a.e0(pairM, mediaLoadData);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void L(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.c2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f485a.d0(pairM, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void N(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final int i11) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.b2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f479a.X(pairM, i11);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.f2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f523a.T(pairM);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final Exception exc) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f653a.Y(pairM, exc);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void V(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.y1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f708a.b0(pairM, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.v1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f663a.U(pairM);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f698a.Q(pairM);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z6) {
            final Pair<Integer, MediaSource.MediaPeriodId> pairM = M(i10, mediaPeriodId);
            if (pairM != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.e2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f518a.c0(pairM, loadEventInfo, mediaLoadData, iOException, z6);
                    }
                });
            }
        }
    }

    static final class MediaSourceHolder implements MediaSourceInfoHolder {
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final MaskingMediaSource mediaSource;
        public final List<MediaSource.MediaPeriodId> activeMediaPeriodIds = new ArrayList();
        public final Object uid = new Object();

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Object a() {
            return this.uid;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Timeline b() {
            return this.mediaSource.H0();
        }

        public void c(int i10) {
            this.firstWindowIndexInChild = i10;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }

        public MediaSourceHolder(MediaSource mediaSource, boolean z6) {
            this.mediaSource = new MaskingMediaSource(mediaSource, z6);
        }
    }

    public interface MediaSourceListInfoRefreshListener {
        void a();
    }

    private void C(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceHolders.remove(i12);
            this.mediaSourceByUid.remove(mediaSourceHolderRemove.uid);
            g(i12, -mediaSourceHolderRemove.mediaSource.H0().t());
            mediaSourceHolderRemove.isRemoved = true;
            if (this.isPrepared) {
                v(mediaSourceHolderRemove);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static MediaSource.MediaPeriodId n(MediaSourceHolder mediaSourceHolder, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i10 = 0; i10 < mediaSourceHolder.activeMediaPeriodIds.size(); i10++) {
            if (mediaSourceHolder.activeMediaPeriodIds.get(i10).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.d(p(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    public ShuffleOrder q() {
        return this.shuffleOrder;
    }

    public boolean t() {
        return this.isPrepared;
    }

    public Timeline w(int i10, int i11, int i12, ShuffleOrder shuffleOrder) {
        Assertions.a(i10 >= 0 && i10 <= i11 && i11 <= r() && i12 >= 0);
        this.shuffleOrder = shuffleOrder;
        if (i10 == i11 || i10 == i12) {
            return i();
        }
        int iMin = Math.min(i10, i12);
        int iMax = Math.max(((i11 - i10) + i12) - 1, i11 - 1);
        int iT = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        Util.J0(this.mediaSourceHolders, i10, i11, i12);
        while (iMin <= iMax) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(iMin);
            mediaSourceHolder.firstWindowIndexInChild = iT;
            iT += mediaSourceHolder.mediaSource.H0().t();
            iMin++;
        }
        return i();
    }

    private static final class MediaSourceAndListener {
        public final MediaSource.MediaSourceCaller caller;
        public final ForwardingEventListener eventListener;
        public final MediaSource mediaSource;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i10).firstWindowIndexInChild += i11;
            i10++;
        }
    }

    private void j(MediaSourceHolder mediaSourceHolder) {
        MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.X(mediaSourceAndListener.caller);
        }
    }

    private void k() {
        Iterator<MediaSourceHolder> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            MediaSourceHolder next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                j(next);
                it.remove();
            }
        }
    }

    private void l(MediaSourceHolder mediaSourceHolder) {
        this.enabledMediaSourceHolders.add(mediaSourceHolder);
        MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.U(mediaSourceAndListener.caller);
        }
    }

    private static Object p(MediaSourceHolder mediaSourceHolder, Object obj) {
        return AbstractConcatenatedTimeline.C(mediaSourceHolder.uid, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int s(MediaSourceHolder mediaSourceHolder, int i10) {
        return i10 + mediaSourceHolder.firstWindowIndexInChild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(MediaSource mediaSource, Timeline timeline) {
        this.mediaSourceListInfoListener.a();
    }

    private void v(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.activeMediaPeriodIds.isEmpty()) {
            MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.e(this.childSources.remove(mediaSourceHolder));
            mediaSourceAndListener.mediaSource.E(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.J(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.P(mediaSourceAndListener.eventListener);
            this.enabledMediaSourceHolders.remove(mediaSourceHolder);
        }
    }

    private void y(MediaSourceHolder mediaSourceHolder) {
        MaskingMediaSource maskingMediaSource = mediaSourceHolder.mediaSource;
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: androidx.media3.exoplayer.t1
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            public final void Q(MediaSource mediaSource, Timeline timeline) {
                this.f641a.u(mediaSource, timeline);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(mediaSourceHolder);
        this.childSources.put(mediaSourceHolder, new MediaSourceAndListener(maskingMediaSource, mediaSourceCaller, forwardingEventListener));
        maskingMediaSource.s(Util.y(), forwardingEventListener);
        maskingMediaSource.y(Util.y(), forwardingEventListener);
        maskingMediaSource.T(mediaSourceCaller, this.mediaTransferListener, this.playerId);
    }

    public void A(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.e(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.A(mediaPeriod);
        mediaSourceHolder.activeMediaPeriodIds.remove(((MaskingMediaPeriod) mediaPeriod).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            k();
        }
        v(mediaSourceHolder);
    }

    public Timeline B(int i10, int i11, ShuffleOrder shuffleOrder) {
        Assertions.a(i10 >= 0 && i10 <= i11 && i11 <= r());
        this.shuffleOrder = shuffleOrder;
        C(i10, i11);
        return i();
    }

    public Timeline D(List<MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        C(0, this.mediaSourceHolders.size());
        return f(this.mediaSourceHolders.size(), list, shuffleOrder);
    }

    public MediaPeriod h(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        Object objO = o(mediaPeriodId.periodUid);
        MediaSource.MediaPeriodId mediaPeriodIdD = mediaPeriodId.d(m(mediaPeriodId.periodUid));
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.e(this.mediaSourceByUid.get(objO));
        l(mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriodIds.add(mediaPeriodIdD);
        MaskingMediaPeriod maskingMediaPeriodM = mediaSourceHolder.mediaSource.M(mediaPeriodIdD, allocator, j6);
        this.mediaSourceByMediaPeriod.put(maskingMediaPeriodM, mediaSourceHolder);
        k();
        return maskingMediaPeriodM;
    }

    public Timeline i() {
        if (this.mediaSourceHolders.isEmpty()) {
            return Timeline.EMPTY;
        }
        int iT = 0;
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i10);
            mediaSourceHolder.firstWindowIndexInChild = iT;
            iT += mediaSourceHolder.mediaSource.H0().t();
        }
        return new PlaylistTimeline(this.mediaSourceHolders, this.shuffleOrder);
    }

    public int r() {
        return this.mediaSourceHolders.size();
    }

    public void x(@Nullable TransferListener transferListener) {
        Assertions.g(!this.isPrepared);
        this.mediaTransferListener = transferListener;
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i10);
            y(mediaSourceHolder);
            this.enabledMediaSourceHolders.add(mediaSourceHolder);
        }
        this.isPrepared = true;
    }

    public void z() {
        for (MediaSourceAndListener mediaSourceAndListener : this.childSources.values()) {
            try {
                mediaSourceAndListener.mediaSource.E(mediaSourceAndListener.caller);
            } catch (RuntimeException e) {
                Log.d(TAG, "Failed to release child source.", e);
            }
            mediaSourceAndListener.mediaSource.J(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.P(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
        this.enabledMediaSourceHolders.clear();
        this.isPrepared = false;
    }

    public MediaSourceList(MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, PlayerId playerId) {
        this.playerId = playerId;
        this.mediaSourceListInfoListener = mediaSourceListInfoRefreshListener;
        this.eventListener = analyticsCollector;
        this.eventHandler = handlerWrapper;
    }

    private static Object m(Object obj) {
        return AbstractConcatenatedTimeline.z(obj);
    }

    private static Object o(Object obj) {
        return AbstractConcatenatedTimeline.A(obj);
    }

    public Timeline E(ShuffleOrder shuffleOrder) {
        int iR = r();
        if (shuffleOrder.getLength() != iR) {
            shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, iR);
        }
        this.shuffleOrder = shuffleOrder;
        return i();
    }

    public Timeline f(int i10, List<MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        if (!list.isEmpty()) {
            this.shuffleOrder = shuffleOrder;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                MediaSourceHolder mediaSourceHolder = list.get(i11 - i10);
                if (i11 > 0) {
                    MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i11 - 1);
                    mediaSourceHolder.c(mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.mediaSource.H0().t());
                } else {
                    mediaSourceHolder.c(0);
                }
                g(i11, mediaSourceHolder.mediaSource.H0().t());
                this.mediaSourceHolders.add(i11, mediaSourceHolder);
                this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
                if (this.isPrepared) {
                    y(mediaSourceHolder);
                    if (this.mediaSourceByMediaPeriod.isEmpty()) {
                        this.enabledMediaSourceHolders.add(mediaSourceHolder);
                    } else {
                        j(mediaSourceHolder);
                    }
                }
            }
        }
        return i();
    }
}
