package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public abstract class WrappingMediaSource extends CompositeMediaSource<Void> {
    private static final Void CHILD_SOURCE_ID = null;
    protected final MediaSource mediaSource;

    @Nullable
    protected MediaSource.MediaPeriodId u0(MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    protected long w0(long j6) {
        return j6;
    }

    protected int y0(int i10) {
        return i10;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        this.mediaSource.A(mediaPeriod);
    }

    protected final void C0() {
        s0(CHILD_SOURCE_ID, this.mediaSource);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        return this.mediaSource.M(mediaPeriodId, allocator, j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaSource.j();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    @Nullable
    public Timeline o() {
        return this.mediaSource.o();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean r() {
        return this.mediaSource.r();
    }

    protected WrappingMediaSource(MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    protected void A0(Timeline timeline) {
        i0(timeline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public final void q0(Void r1, MediaSource mediaSource, Timeline timeline) {
        A0(timeline);
    }

    protected void D0() {
        C0();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected final void h0(@Nullable TransferListener transferListener) {
        super.h0(transferListener);
        D0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    @Nullable
    /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
    public final MediaSource.MediaPeriodId n0(Void r1, MediaSource.MediaPeriodId mediaPeriodId) {
        return u0(mediaPeriodId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public final long o0(Void r1, long j6) {
        return w0(j6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public final int p0(Void r1, int i10) {
        return y0(i10);
    }
}
