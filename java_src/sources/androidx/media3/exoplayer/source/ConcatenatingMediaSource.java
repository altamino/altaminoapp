package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.AbstractConcatenatedTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class ConcatenatingMediaSource extends CompositeMediaSource<MediaSourceHolder> {
    private static final int MSG_ADD = 0;
    private static final int MSG_MOVE = 2;
    private static final int MSG_ON_COMPLETION = 5;
    private static final int MSG_REMOVE = 1;
    private static final int MSG_SET_SHUFFLE_ORDER = 3;
    private static final int MSG_UPDATE_TIMELINE = 4;
    private static final MediaItem PLACEHOLDER_MEDIA_ITEM = new MediaItem.Builder().j(Uri.EMPTY).a();
    private final Set<MediaSourceHolder> enabledMediaSourceHolders;
    private final boolean isAtomic;
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    private final Map<Object, MediaSourceHolder> mediaSourceByUid;
    private final List<MediaSourceHolder> mediaSourceHolders;

    @GuardedBy
    private final List<MediaSourceHolder> mediaSourcesPublic;
    private Set<HandlerAndRunnable> nextTimelineUpdateOnCompletionActions;

    @GuardedBy
    private final Set<HandlerAndRunnable> pendingOnCompletionActions;

    @Nullable
    @GuardedBy
    private Handler playbackThreadHandler;
    private ShuffleOrder shuffleOrder;
    private boolean timelineUpdateScheduled;
    private final boolean useLazyPreparation;

    private static final class ConcatenatedTimeline extends AbstractConcatenatedTimeline {
        private final HashMap<Object, Integer> childIndexByUid;
        private final int[] firstPeriodInChildIndices;
        private final int[] firstWindowInChildIndices;
        private final int periodCount;
        private final Timeline[] timelines;
        private final Object[] uids;
        private final int windowCount;

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.periodCount;
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return this.windowCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Object B(int i10) {
            return this.uids[i10];
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int D(int i10) {
            return this.firstPeriodInChildIndices[i10];
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int E(int i10) {
            return this.firstWindowInChildIndices[i10];
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Timeline H(int i10) {
            return this.timelines[i10];
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int w(Object obj) {
            Integer num = this.childIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int x(int i10) {
            return Util.h(this.firstPeriodInChildIndices, i10 + 1, false, false);
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int y(int i10) {
            return Util.h(this.firstWindowInChildIndices, i10 + 1, false, false);
        }

        public ConcatenatedTimeline(Collection<MediaSourceHolder> collection, ShuffleOrder shuffleOrder, boolean z6) {
            super(z6, shuffleOrder);
            int size = collection.size();
            this.firstPeriodInChildIndices = new int[size];
            this.firstWindowInChildIndices = new int[size];
            this.timelines = new Timeline[size];
            this.uids = new Object[size];
            this.childIndexByUid = new HashMap<>();
            int iT = 0;
            int iM = 0;
            int i10 = 0;
            for (MediaSourceHolder mediaSourceHolder : collection) {
                this.timelines[i10] = mediaSourceHolder.mediaSource.H0();
                this.firstWindowInChildIndices[i10] = iT;
                this.firstPeriodInChildIndices[i10] = iM;
                iT += this.timelines[i10].t();
                iM += this.timelines[i10].m();
                Object[] objArr = this.uids;
                Object obj = mediaSourceHolder.uid;
                objArr[i10] = obj;
                this.childIndexByUid.put(obj, Integer.valueOf(i10));
                i10++;
            }
            this.windowCount = iT;
            this.periodCount = iM;
        }
    }

    private static final class FakeMediaSource extends BaseMediaSource {
        private FakeMediaSource() {
        }

        @Override // androidx.media3.exoplayer.source.MediaSource
        public void A(MediaPeriod mediaPeriod) {
        }

        @Override // androidx.media3.exoplayer.source.BaseMediaSource
        protected void h0(@Nullable TransferListener transferListener) {
        }

        @Override // androidx.media3.exoplayer.source.BaseMediaSource
        protected void j0() {
        }

        @Override // androidx.media3.exoplayer.source.MediaSource
        public void maybeThrowSourceInfoRefreshError() {
        }

        @Override // androidx.media3.exoplayer.source.MediaSource
        public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.exoplayer.source.MediaSource
        public MediaItem j() {
            return ConcatenatingMediaSource.PLACEHOLDER_MEDIA_ITEM;
        }
    }

    private static final class HandlerAndRunnable {
        private final Handler handler;
        private final Runnable runnable;

        public void a() {
            this.handler.post(this.runnable);
        }

        public HandlerAndRunnable(Handler handler, Runnable runnable) {
            this.handler = handler;
            this.runnable = runnable;
        }
    }

    static final class MediaSourceHolder {
        public int childIndex;
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final MaskingMediaSource mediaSource;
        public final List<MediaSource.MediaPeriodId> activeMediaPeriodIds = new ArrayList();
        public final Object uid = new Object();

        public void a(int i10, int i11) {
            this.childIndex = i10;
            this.firstWindowIndexInChild = i11;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }

        public MediaSourceHolder(MediaSource mediaSource, boolean z6) {
            this.mediaSource = new MaskingMediaSource(mediaSource, z6);
        }
    }

    public ConcatenatingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    @GuardedBy
    private void D0(int i10, Collection<MediaSource> collection, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.a((handler == null) == (runnable == null));
        Handler handler2 = this.playbackThreadHandler;
        Iterator<MediaSource> it = collection.iterator();
        while (it.hasNext()) {
            Assertions.e(it.next());
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<MediaSource> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(new MediaSourceHolder(it2.next(), this.useLazyPreparation));
        }
        this.mediaSourcesPublic.addAll(i10, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new MessageData(i10, arrayList, F0(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    private synchronized void H0(Set<HandlerAndRunnable> set) {
        try {
            Iterator<HandlerAndRunnable> it = set.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.pendingOnCompletionActions.removeAll(set);
        } catch (Throwable th) {
            throw th;
        }
    }

    @GuardedBy
    private void W0(int i10, int i11, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.a((handler == null) == (runnable == null));
        Handler handler2 = this.playbackThreadHandler;
        Util.V0(this.mediaSourcesPublic, i10, i11);
        if (handler2 != null) {
            handler2.obtainMessage(1, new MessageData(i10, Integer.valueOf(i11), F0(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    private void X0() {
        Y0(null);
    }

    private void a1() {
        this.timelineUpdateScheduled = false;
        Set<HandlerAndRunnable> set = this.nextTimelineUpdateOnCompletionActions;
        this.nextTimelineUpdateOnCompletionActions = new HashSet();
        i0(new ConcatenatedTimeline(this.mediaSourceHolders, this.shuffleOrder, this.isAtomic));
        N0().obtainMessage(5, set).sendToTarget();
    }

    public synchronized void B0(Collection<MediaSource> collection) {
        D0(this.mediaSourcesPublic.size(), collection, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    @Nullable
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public MediaSource.MediaPeriodId n0(MediaSourceHolder mediaSourceHolder, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i10 = 0; i10 < mediaSourceHolder.activeMediaPeriodIds.size(); i10++) {
            if (mediaSourceHolder.activeMediaPeriodIds.get(i10).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.d(M0(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    public synchronized int O0() {
        return this.mediaSourcesPublic.size();
    }

    public synchronized void V0(int i10, int i11) {
        W0(i10, i11, null, null);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void e0() {
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected synchronized void h0(@Nullable TransferListener transferListener) {
        try {
            super.h0(transferListener);
            this.playbackThreadHandler = new Handler(new Handler.Callback() { // from class: androidx.media3.exoplayer.source.b
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f602a.Q0(message);
                }
            });
            if (this.mediaSourcesPublic.isEmpty()) {
                a1();
            } else {
                this.shuffleOrder = this.shuffleOrder.cloneAndInsert(0, this.mediaSourcesPublic.size());
                C0(0, this.mediaSourcesPublic);
                X0();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return PLACEHOLDER_MEDIA_ITEM;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected synchronized void j0() {
        try {
            super.j0();
            this.mediaSourceHolders.clear();
            this.enabledMediaSourceHolders.clear();
            this.mediaSourceByUid.clear();
            this.shuffleOrder = this.shuffleOrder.cloneAndClear();
            Handler handler = this.playbackThreadHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.playbackThreadHandler = null;
            }
            this.timelineUpdateScheduled = false;
            this.nextTimelineUpdateOnCompletionActions.clear();
            H0(this.pendingOnCompletionActions);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public synchronized Timeline o() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return new ConcatenatedTimeline(this.mediaSourcesPublic, this.shuffleOrder.getLength() != this.mediaSourcesPublic.size() ? this.shuffleOrder.cloneAndClear().cloneAndInsert(0, this.mediaSourcesPublic.size()) : this.shuffleOrder, this.isAtomic);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean r() {
        return false;
    }

    public synchronized void w0(int i10, MediaSource mediaSource) {
        D0(i10, Collections.singletonList(mediaSource), null, null);
    }

    public synchronized void x0(int i10, MediaSource mediaSource, Handler handler, Runnable runnable) {
        D0(i10, Collections.singletonList(mediaSource), handler, runnable);
    }

    public synchronized void y0(MediaSource mediaSource) {
        w0(this.mediaSourcesPublic.size(), mediaSource);
    }

    public synchronized void z0(MediaSource mediaSource, Handler handler, Runnable runnable) {
        x0(this.mediaSourcesPublic.size(), mediaSource, handler, runnable);
    }

    private static final class MessageData<T> {
        public final T customData;
        public final int index;

        @Nullable
        public final HandlerAndRunnable onCompletionAction;

        public MessageData(int i10, T t5, @Nullable HandlerAndRunnable handlerAndRunnable) {
            this.index = i10;
            this.customData = t5;
            this.onCompletionAction = handlerAndRunnable;
        }
    }

    public ConcatenatingMediaSource(boolean z6, MediaSource... mediaSourceArr) {
        this(z6, new ShuffleOrder.DefaultShuffleOrder(0), mediaSourceArr);
    }

    private void A0(int i10, MediaSourceHolder mediaSourceHolder) {
        if (i10 > 0) {
            MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i10 - 1);
            mediaSourceHolder.a(i10, mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.mediaSource.H0().t());
        } else {
            mediaSourceHolder.a(i10, 0);
        }
        E0(i10, 1, mediaSourceHolder.mediaSource.H0().t());
        this.mediaSourceHolders.add(i10, mediaSourceHolder);
        this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
        s0(mediaSourceHolder, mediaSourceHolder.mediaSource);
        if (g0() && this.mediaSourceByMediaPeriod.isEmpty()) {
            this.enabledMediaSourceHolders.add(mediaSourceHolder);
        } else {
            l0(mediaSourceHolder);
        }
    }

    private void E0(int i10, int i11, int i12) {
        while (i10 < this.mediaSourceHolders.size()) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i10);
            mediaSourceHolder.childIndex += i11;
            mediaSourceHolder.firstWindowIndexInChild += i12;
            i10++;
        }
    }

    @Nullable
    @GuardedBy
    private HandlerAndRunnable F0(@Nullable Handler handler, @Nullable Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        HandlerAndRunnable handlerAndRunnable = new HandlerAndRunnable(handler, runnable);
        this.pendingOnCompletionActions.add(handlerAndRunnable);
        return handlerAndRunnable;
    }

    private void G0() {
        Iterator<MediaSourceHolder> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            MediaSourceHolder next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                l0(next);
                it.remove();
            }
        }
    }

    private void I0(MediaSourceHolder mediaSourceHolder) {
        this.enabledMediaSourceHolders.add(mediaSourceHolder);
        m0(mediaSourceHolder);
    }

    private static Object M0(MediaSourceHolder mediaSourceHolder, Object obj) {
        return AbstractConcatenatedTimeline.C(mediaSourceHolder.uid, obj);
    }

    private Handler N0() {
        return (Handler) Assertions.e(this.playbackThreadHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean Q0(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            MessageData messageData = (MessageData) Util.j(message.obj);
            this.shuffleOrder = this.shuffleOrder.cloneAndInsert(messageData.index, ((Collection) messageData.customData).size());
            C0(messageData.index, (Collection) messageData.customData);
            Y0(messageData.onCompletionAction);
        } else if (i10 == 1) {
            MessageData messageData2 = (MessageData) Util.j(message.obj);
            int i11 = messageData2.index;
            int iIntValue = ((Integer) messageData2.customData).intValue();
            if (i11 == 0 && iIntValue == this.shuffleOrder.getLength()) {
                this.shuffleOrder = this.shuffleOrder.cloneAndClear();
            } else {
                this.shuffleOrder = this.shuffleOrder.a(i11, iIntValue);
            }
            for (int i12 = iIntValue - 1; i12 >= i11; i12--) {
                U0(i12);
            }
            Y0(messageData2.onCompletionAction);
        } else if (i10 == 2) {
            MessageData messageData3 = (MessageData) Util.j(message.obj);
            ShuffleOrder shuffleOrder = this.shuffleOrder;
            int i13 = messageData3.index;
            ShuffleOrder shuffleOrderA = shuffleOrder.a(i13, i13 + 1);
            this.shuffleOrder = shuffleOrderA;
            this.shuffleOrder = shuffleOrderA.cloneAndInsert(((Integer) messageData3.customData).intValue(), 1);
            S0(messageData3.index, ((Integer) messageData3.customData).intValue());
            Y0(messageData3.onCompletionAction);
        } else if (i10 == 3) {
            MessageData messageData4 = (MessageData) Util.j(message.obj);
            this.shuffleOrder = (ShuffleOrder) messageData4.customData;
            Y0(messageData4.onCompletionAction);
        } else if (i10 == 4) {
            a1();
        } else {
            if (i10 != 5) {
                throw new IllegalStateException();
            }
            H0((Set) Util.j(message.obj));
        }
        return true;
    }

    private void R0(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.activeMediaPeriodIds.isEmpty()) {
            this.enabledMediaSourceHolders.remove(mediaSourceHolder);
            t0(mediaSourceHolder);
        }
    }

    private void U0(int i10) {
        MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceHolders.remove(i10);
        this.mediaSourceByUid.remove(mediaSourceHolderRemove.uid);
        E0(i10, -1, -mediaSourceHolderRemove.mediaSource.H0().t());
        mediaSourceHolderRemove.isRemoved = true;
        R0(mediaSourceHolderRemove);
    }

    private void Y0(@Nullable HandlerAndRunnable handlerAndRunnable) {
        if (!this.timelineUpdateScheduled) {
            N0().obtainMessage(4).sendToTarget();
            this.timelineUpdateScheduled = true;
        }
        if (handlerAndRunnable != null) {
            this.nextTimelineUpdateOnCompletionActions.add(handlerAndRunnable);
        }
    }

    private void Z0(MediaSourceHolder mediaSourceHolder, Timeline timeline) {
        if (mediaSourceHolder.childIndex + 1 < this.mediaSourceHolders.size()) {
            int iT = timeline.t() - (this.mediaSourceHolders.get(mediaSourceHolder.childIndex + 1).firstWindowIndexInChild - mediaSourceHolder.firstWindowIndexInChild);
            if (iT != 0) {
                E0(mediaSourceHolder.childIndex + 1, 0, iT);
            }
        }
        X0();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.e(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.A(mediaPeriod);
        mediaSourceHolder.activeMediaPeriodIds.remove(((MaskingMediaPeriod) mediaPeriod).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            G0();
        }
        R0(mediaSourceHolder);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        Object objL0 = L0(mediaPeriodId.periodUid);
        MediaSource.MediaPeriodId mediaPeriodIdD = mediaPeriodId.d(J0(mediaPeriodId.periodUid));
        MediaSourceHolder mediaSourceHolder = this.mediaSourceByUid.get(objL0);
        if (mediaSourceHolder == null) {
            mediaSourceHolder = new MediaSourceHolder(new FakeMediaSource(), this.useLazyPreparation);
            mediaSourceHolder.isRemoved = true;
            s0(mediaSourceHolder, mediaSourceHolder.mediaSource);
        }
        I0(mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriodIds.add(mediaPeriodIdD);
        MaskingMediaPeriod maskingMediaPeriodE0 = mediaSourceHolder.mediaSource.M(mediaPeriodIdD, allocator, j6);
        this.mediaSourceByMediaPeriod.put(maskingMediaPeriodE0, mediaSourceHolder);
        G0();
        return maskingMediaPeriodE0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public int p0(MediaSourceHolder mediaSourceHolder, int i10) {
        return i10 + mediaSourceHolder.firstWindowIndexInChild;
    }

    public ConcatenatingMediaSource(boolean z6, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        this(z6, false, shuffleOrder, mediaSourceArr);
    }

    private void C0(int i10, Collection<MediaSourceHolder> collection) {
        Iterator<MediaSourceHolder> it = collection.iterator();
        while (it.hasNext()) {
            A0(i10, it.next());
            i10++;
        }
    }

    private static Object J0(Object obj) {
        return AbstractConcatenatedTimeline.z(obj);
    }

    private static Object L0(Object obj) {
        return AbstractConcatenatedTimeline.A(obj);
    }

    private void S0(int i10, int i11) {
        int iMin = Math.min(i10, i11);
        int iMax = Math.max(i10, i11);
        int iT = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        List<MediaSourceHolder> list = this.mediaSourceHolders;
        list.add(i11, list.remove(i10));
        while (iMin <= iMax) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(iMin);
            mediaSourceHolder.childIndex = iMin;
            mediaSourceHolder.firstWindowIndexInChild = iT;
            iT += mediaSourceHolder.mediaSource.H0().t();
            iMin++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public void q0(MediaSourceHolder mediaSourceHolder, MediaSource mediaSource, Timeline timeline) {
        Z0(mediaSourceHolder, timeline);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void d0() {
        super.d0();
        this.enabledMediaSourceHolders.clear();
    }

    public ConcatenatingMediaSource(boolean z6, boolean z10, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        for (MediaSource mediaSource : mediaSourceArr) {
            Assertions.e(mediaSource);
        }
        this.shuffleOrder = shuffleOrder.getLength() > 0 ? shuffleOrder.cloneAndClear() : shuffleOrder;
        this.mediaSourceByMediaPeriod = new IdentityHashMap<>();
        this.mediaSourceByUid = new HashMap();
        this.mediaSourcesPublic = new ArrayList();
        this.mediaSourceHolders = new ArrayList();
        this.nextTimelineUpdateOnCompletionActions = new HashSet();
        this.pendingOnCompletionActions = new HashSet();
        this.enabledMediaSourceHolders = new HashSet();
        this.isAtomic = z6;
        this.useLazyPreparation = z10;
        B0(Arrays.asList(mediaSourceArr));
    }
}
