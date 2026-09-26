package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class SingleSampleMediaSource extends BaseMediaSource {
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final Format format;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem mediaItem;
    private final Timeline timeline;

    @Nullable
    private TransferListener transferListener;
    private final boolean treatLoadErrorsAsEndOfStream;

    public static final class Factory {
        private final DataSource.Factory dataSourceFactory;

        @Nullable
        private Object tag;

        @Nullable
        private String trackId;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        private boolean treatLoadErrorsAsEndOfStream = true;

        public SingleSampleMediaSource a(MediaItem.SubtitleConfiguration subtitleConfiguration, long j6) {
            return new SingleSampleMediaSource(this.trackId, subtitleConfiguration, this.dataSourceFactory, j6, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag);
        }

        public Factory b(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = (DataSource.Factory) Assertions.e(factory);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    private SingleSampleMediaSource(@Nullable String str, MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory factory, long j6, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z6, @Nullable Object obj) {
        this.dataSourceFactory = factory;
        this.durationUs = j6;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.treatLoadErrorsAsEndOfStream = z6;
        MediaItem mediaItemA = new MediaItem.Builder().j(Uri.EMPTY).e(subtitleConfiguration.uri.toString()).h(com.google.common.collect.a0.y(subtitleConfiguration)).i(obj).a();
        this.mediaItem = mediaItemA;
        Format.Builder builderW = new Format.Builder().g0((String) com.google.common.base.i.a(subtitleConfiguration.mimeType, "text/x-unknown")).X(subtitleConfiguration.language).i0(subtitleConfiguration.selectionFlags).e0(subtitleConfiguration.roleFlags).W(subtitleConfiguration.label);
        String str2 = subtitleConfiguration.id;
        this.format = builderW.U(str2 == null ? str : str2).G();
        this.dataSpec = new DataSpec.Builder().i(subtitleConfiguration.uri).b(1).a();
        this.timeline = new SinglePeriodTimeline(j6, true, false, false, (Object) null, mediaItemA);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).h();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        return new SingleSampleMediaPeriod(this.dataSpec, this.dataSourceFactory, this.transferListener, this.format, this.durationUs, this.loadErrorHandlingPolicy, c0(mediaPeriodId), this.treatLoadErrorsAsEndOfStream);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        this.transferListener = transferListener;
        i0(this.timeline);
    }
}
