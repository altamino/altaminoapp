package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public abstract class BaseMediaSource implements MediaSource {

    @Nullable
    private Looper looper;

    @Nullable
    private PlayerId playerId;

    @Nullable
    private Timeline timeline;
    private final ArrayList<MediaSource.MediaSourceCaller> mediaSourceCallers = new ArrayList<>(1);
    private final HashSet<MediaSource.MediaSourceCaller> enabledMediaSourceCallers = new HashSet<>(1);
    private final MediaSourceEventListener.EventDispatcher eventDispatcher = new MediaSourceEventListener.EventDispatcher();
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher = new DrmSessionEventListener.EventDispatcher();

    protected void d0() {
    }

    protected void e0() {
    }

    protected abstract void h0(@Nullable TransferListener transferListener);

    protected abstract void j0();

    @Override // androidx.media3.exoplayer.source.MediaSource
    public /* synthetic */ Timeline o() {
        return n.a(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public /* synthetic */ boolean r() {
        return n.b(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void E(MediaSource.MediaSourceCaller mediaSourceCaller) {
        this.mediaSourceCallers.remove(mediaSourceCaller);
        if (!this.mediaSourceCallers.isEmpty()) {
            X(mediaSourceCaller);
            return;
        }
        this.looper = null;
        this.timeline = null;
        this.playerId = null;
        this.enabledMediaSourceCallers.clear();
        j0();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void J(MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.B(mediaSourceEventListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void P(DrmSessionEventListener drmSessionEventListener) {
        this.drmEventDispatcher.t(drmSessionEventListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void U(MediaSource.MediaSourceCaller mediaSourceCaller) {
        Assertions.e(this.looper);
        boolean zIsEmpty = this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.add(mediaSourceCaller);
        if (zIsEmpty) {
            e0();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void X(MediaSource.MediaSourceCaller mediaSourceCaller) {
        boolean z6 = !this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.remove(mediaSourceCaller);
        if (z6 && this.enabledMediaSourceCallers.isEmpty()) {
            d0();
        }
    }

    protected final DrmSessionEventListener.EventDispatcher Z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.drmEventDispatcher.u(i10, mediaPeriodId);
    }

    protected final DrmSessionEventListener.EventDispatcher a0(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.drmEventDispatcher.u(0, mediaPeriodId);
    }

    protected final MediaSourceEventListener.EventDispatcher b0(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.eventDispatcher.E(i10, mediaPeriodId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaSourceEventListener.EventDispatcher c0(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.eventDispatcher.E(0, mediaPeriodId);
    }

    protected final PlayerId f0() {
        return (PlayerId) Assertions.i(this.playerId);
    }

    protected final boolean g0() {
        return !this.enabledMediaSourceCallers.isEmpty();
    }

    protected final void i0(Timeline timeline) {
        this.timeline = timeline;
        Iterator<MediaSource.MediaSourceCaller> it = this.mediaSourceCallers.iterator();
        while (it.hasNext()) {
            it.next().Q(this, timeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void T(MediaSource.MediaSourceCaller mediaSourceCaller, @Nullable TransferListener transferListener, PlayerId playerId) {
        boolean z6;
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.looper;
        if (looper != null && looper != looperMyLooper) {
            z6 = false;
        } else {
            z6 = true;
        }
        Assertions.a(z6);
        this.playerId = playerId;
        Timeline timeline = this.timeline;
        this.mediaSourceCallers.add(mediaSourceCaller);
        if (this.looper == null) {
            this.looper = looperMyLooper;
            this.enabledMediaSourceCallers.add(mediaSourceCaller);
            h0(transferListener);
        } else if (timeline != null) {
            U(mediaSourceCaller);
            mediaSourceCaller.Q(this, timeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void s(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        Assertions.e(handler);
        Assertions.e(mediaSourceEventListener);
        this.eventDispatcher.g(handler, mediaSourceEventListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void y(Handler handler, DrmSessionEventListener drmSessionEventListener) {
        Assertions.e(handler);
        Assertions.e(drmSessionEventListener);
        this.drmEventDispatcher.g(handler, drmSessionEventListener);
    }
}
