package androidx.media3.exoplayer.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.CompositeMediaSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public final class AdsMediaSource extends CompositeMediaSource<MediaSource.MediaPeriodId> {
    private static final MediaSource.MediaPeriodId CHILD_SOURCE_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    private final MediaSource.Factory adMediaSourceFactory;

    @Nullable
    private AdPlaybackState adPlaybackState;
    private final DataSpec adTagDataSpec;
    private final AdViewProvider adViewProvider;
    private final Object adsId;
    private final AdsLoader adsLoader;

    @Nullable
    private ComponentListener componentListener;

    @Nullable
    final MediaItem.DrmConfiguration contentDrmConfiguration;
    private final MediaSource contentMediaSource;

    @Nullable
    private Timeline contentTimeline;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Timeline.Period period = new Timeline.Period();
    private AdMediaSourceHolder[][] adMediaSourceHolders = new AdMediaSourceHolder[0][];

    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public static AdLoadException a(Exception exc) {
            return new AdLoadException(0, exc);
        }

        private AdLoadException(int i10, Exception exc) {
            super(exc);
            this.type = i10;
        }
    }

    private final class AdMediaSourceHolder {
        private final List<MaskingMediaPeriod> activeMediaPeriods = new ArrayList();
        private MediaSource adMediaSource;
        private Uri adUri;
        private final MediaSource.MediaPeriodId id;
        private Timeline timeline;

        public boolean d() {
            return this.adMediaSource != null;
        }

        public AdMediaSourceHolder(MediaSource.MediaPeriodId mediaPeriodId) {
            this.id = mediaPeriodId;
        }

        public MediaPeriod a(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
            MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j6);
            this.activeMediaPeriods.add(maskingMediaPeriod);
            MediaSource mediaSource = this.adMediaSource;
            if (mediaSource != null) {
                maskingMediaPeriod.n(mediaSource);
                maskingMediaPeriod.o(AdsMediaSource.this.new AdPrepareListener((Uri) Assertions.e(this.adUri)));
            }
            Timeline timeline = this.timeline;
            if (timeline != null) {
                maskingMediaPeriod.b(new MediaSource.MediaPeriodId(timeline.q(0), mediaPeriodId.windowSequenceNumber));
            }
            return maskingMediaPeriod;
        }

        public long b() {
            Timeline timeline = this.timeline;
            if (timeline == null) {
                return -9223372036854775807L;
            }
            return timeline.j(0, AdsMediaSource.this.period).n();
        }

        public void e(MediaSource mediaSource, Uri uri) {
            this.adMediaSource = mediaSource;
            this.adUri = uri;
            for (int i10 = 0; i10 < this.activeMediaPeriods.size(); i10++) {
                MaskingMediaPeriod maskingMediaPeriod = this.activeMediaPeriods.get(i10);
                maskingMediaPeriod.n(mediaSource);
                maskingMediaPeriod.o(AdsMediaSource.this.new AdPrepareListener(uri));
            }
            AdsMediaSource.this.s0(this.id, mediaSource);
        }

        public boolean f() {
            return this.activeMediaPeriods.isEmpty();
        }

        public void h(MaskingMediaPeriod maskingMediaPeriod) {
            this.activeMediaPeriods.remove(maskingMediaPeriod);
            maskingMediaPeriod.m();
        }

        public void c(Timeline timeline) {
            boolean z6 = true;
            if (timeline.m() != 1) {
                z6 = false;
            }
            Assertions.a(z6);
            if (this.timeline == null) {
                Object objQ = timeline.q(0);
                for (int i10 = 0; i10 < this.activeMediaPeriods.size(); i10++) {
                    MaskingMediaPeriod maskingMediaPeriod = this.activeMediaPeriods.get(i10);
                    maskingMediaPeriod.b(new MediaSource.MediaPeriodId(objQ, maskingMediaPeriod.id.windowSequenceNumber));
                }
            }
            this.timeline = timeline;
        }

        public void g() {
            if (d()) {
                AdsMediaSource.this.t0(this.id);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AdPrepareListener implements MaskingMediaPeriod.PrepareListener {
        private final Uri adUri;

        public AdPrepareListener(Uri uri) {
            this.adUri = uri;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.adsLoader.c(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException) {
            AdsMediaSource.this.adsLoader.d(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, iOException);
        }

        @Override // androidx.media3.exoplayer.source.MaskingMediaPeriod.PrepareListener
        public void a(final MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f597a.e(mediaPeriodId);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.MaskingMediaPeriod.PrepareListener
        public void b(final MediaSource.MediaPeriodId mediaPeriodId, final IOException iOException) {
            AdsMediaSource.this.c0(mediaPeriodId).w(new LoadEventInfo(LoadEventInfo.a(), new DataSpec(this.adUri), SystemClock.elapsedRealtime()), 6, AdLoadException.a(iOException), true);
            AdsMediaSource.this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f599a.f(mediaPeriodId, iOException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ComponentListener implements AdsLoader.EventListener {
        private final Handler playerHandler = Util.w();
        private volatile boolean stopped;

        public void a() {
            this.stopped = true;
            this.playerHandler.removeCallbacksAndMessages(null);
        }

        public ComponentListener() {
        }
    }

    private long[][] C0() {
        long[][] jArr = new long[this.adMediaSourceHolders.length][];
        int i10 = 0;
        while (true) {
            AdMediaSourceHolder[][] adMediaSourceHolderArr = this.adMediaSourceHolders;
            if (i10 >= adMediaSourceHolderArr.length) {
                return jArr;
            }
            jArr[i10] = new long[adMediaSourceHolderArr[i10].length];
            int i11 = 0;
            while (true) {
                AdMediaSourceHolder[] adMediaSourceHolderArr2 = this.adMediaSourceHolders[i10];
                if (i11 < adMediaSourceHolderArr2.length) {
                    AdMediaSourceHolder adMediaSourceHolder = adMediaSourceHolderArr2[i11];
                    jArr[i10][i11] = adMediaSourceHolder == null ? -9223372036854775807L : adMediaSourceHolder.b();
                    i11++;
                }
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(ComponentListener componentListener) {
        this.adsLoader.a(this, this.adTagDataSpec, this.adsId, this.adViewProvider, componentListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(ComponentListener componentListener) {
        this.adsLoader.b(this, componentListener);
    }

    private void G0() {
        Uri uri;
        AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null) {
            return;
        }
        for (int i10 = 0; i10 < this.adMediaSourceHolders.length; i10++) {
            int i11 = 0;
            while (true) {
                AdMediaSourceHolder[] adMediaSourceHolderArr = this.adMediaSourceHolders[i10];
                if (i11 < adMediaSourceHolderArr.length) {
                    AdMediaSourceHolder adMediaSourceHolder = adMediaSourceHolderArr[i11];
                    AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(i10);
                    if (adMediaSourceHolder != null && !adMediaSourceHolder.d()) {
                        Uri[] uriArr = adGroupD.uris;
                        if (i11 < uriArr.length && (uri = uriArr[i11]) != null) {
                            MediaItem.Builder builderJ = new MediaItem.Builder().j(uri);
                            MediaItem.DrmConfiguration drmConfiguration = this.contentDrmConfiguration;
                            if (drmConfiguration != null) {
                                builderJ.c(drmConfiguration);
                            }
                            adMediaSourceHolder.e(this.adMediaSourceFactory.d(builderJ.a()), uri);
                        }
                    }
                    i11++;
                }
            }
        }
    }

    private void H0() {
        Timeline timeline = this.contentTimeline;
        AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null || timeline == null) {
            return;
        }
        if (adPlaybackState.adGroupCount == 0) {
            i0(timeline);
        } else {
            this.adPlaybackState = adPlaybackState.i(C0());
            i0(new SinglePeriodAdTimeline(timeline, this.adPlaybackState));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod;
        MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod.id;
        if (!mediaPeriodId.c()) {
            maskingMediaPeriod.m();
            return;
        }
        AdMediaSourceHolder adMediaSourceHolder = (AdMediaSourceHolder) Assertions.e(this.adMediaSourceHolders[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup]);
        adMediaSourceHolder.h(maskingMediaPeriod);
        if (adMediaSourceHolder.f()) {
            adMediaSourceHolder.g();
            this.adMediaSourceHolders[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup] = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        if (((AdPlaybackState) Assertions.e(this.adPlaybackState)).adGroupCount <= 0 || !mediaPeriodId.c()) {
            MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j6);
            maskingMediaPeriod.n(this.contentMediaSource);
            maskingMediaPeriod.b(mediaPeriodId);
            return maskingMediaPeriod;
        }
        int i10 = mediaPeriodId.adGroupIndex;
        int i11 = mediaPeriodId.adIndexInAdGroup;
        AdMediaSourceHolder[][] adMediaSourceHolderArr = this.adMediaSourceHolders;
        AdMediaSourceHolder[] adMediaSourceHolderArr2 = adMediaSourceHolderArr[i10];
        if (adMediaSourceHolderArr2.length <= i11) {
            adMediaSourceHolderArr[i10] = (AdMediaSourceHolder[]) Arrays.copyOf(adMediaSourceHolderArr2, i11 + 1);
        }
        AdMediaSourceHolder adMediaSourceHolder = this.adMediaSourceHolders[i10][i11];
        if (adMediaSourceHolder == null) {
            adMediaSourceHolder = new AdMediaSourceHolder(mediaPeriodId);
            this.adMediaSourceHolders[i10][i11] = adMediaSourceHolder;
            G0();
        }
        return adMediaSourceHolder.a(mediaPeriodId, allocator, j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.contentMediaSource.j();
    }

    public AdsMediaSource(MediaSource mediaSource, DataSpec dataSpec, Object obj, MediaSource.Factory factory, AdsLoader adsLoader, AdViewProvider adViewProvider) {
        this.contentMediaSource = mediaSource;
        this.contentDrmConfiguration = ((MediaItem.LocalConfiguration) Assertions.e(mediaSource.j().localConfiguration)).drmConfiguration;
        this.adMediaSourceFactory = factory;
        this.adsLoader = adsLoader;
        this.adViewProvider = adViewProvider;
        this.adTagDataSpec = dataSpec;
        this.adsId = obj;
        adsLoader.setSupportedContentTypes(factory.getSupportedTypes());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: D0, reason: merged with bridge method [inline-methods] */
    public MediaSource.MediaPeriodId n0(MediaSource.MediaPeriodId mediaPeriodId, MediaSource.MediaPeriodId mediaPeriodId2) {
        if (!mediaPeriodId.c()) {
            return mediaPeriodId2;
        }
        return mediaPeriodId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public void q0(MediaSource.MediaPeriodId mediaPeriodId, MediaSource mediaSource, Timeline timeline) {
        if (mediaPeriodId.c()) {
            int i10 = mediaPeriodId.adGroupIndex;
            ((AdMediaSourceHolder) Assertions.e(this.adMediaSourceHolders[i10][mediaPeriodId.adIndexInAdGroup])).c(timeline);
        } else {
            boolean z6 = true;
            if (timeline.m() != 1) {
                z6 = false;
            }
            Assertions.a(z6);
            this.contentTimeline = timeline;
        }
        H0();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        super.h0(transferListener);
        final ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        s0(CHILD_SOURCE_MEDIA_PERIOD_ID, this.contentMediaSource);
        this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f593a.E0(componentListener);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        super.j0();
        final ComponentListener componentListener = (ComponentListener) Assertions.e(this.componentListener);
        this.componentListener = null;
        componentListener.a();
        this.contentTimeline = null;
        this.adPlaybackState = null;
        this.adMediaSourceHolders = new AdMediaSourceHolder[0][];
        this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f595a.F0(componentListener);
            }
        });
    }
}
