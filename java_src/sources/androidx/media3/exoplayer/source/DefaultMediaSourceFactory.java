package androidx.media3.exoplayer.source;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.text.SubtitleDecoderFactory;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleExtractor;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class DefaultMediaSourceFactory implements MediaSourceFactory {
    private static final String TAG = "DMediaSourceFactory";

    @Nullable
    private AdViewProvider adViewProvider;

    @Nullable
    private AdsLoader.Provider adsLoaderProvider;
    private DataSource.Factory dataSourceFactory;
    private final DelegateFactoryLoader delegateFactoryLoader;
    private long liveMaxOffsetMs;
    private float liveMaxSpeed;
    private long liveMinOffsetMs;
    private float liveMinSpeed;
    private long liveTargetOffsetMs;

    @Nullable
    private LoadErrorHandlingPolicy loadErrorHandlingPolicy;

    @Nullable
    private MediaSource.Factory serverSideAdInsertionMediaSourceFactory;
    private boolean useProgressiveMediaSourceForSubtitles;

    @UnstableApi
    @Deprecated
    public interface AdsLoaderProvider extends AdsLoader.Provider {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class DelegateFactoryLoader {

        @Nullable
        private CmcdConfiguration.Factory cmcdConfigurationFactory;
        private DataSource.Factory dataSourceFactory;

        @Nullable
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private final ExtractorsFactory extractorsFactory;

        @Nullable
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private final Map<Integer, com.google.common.base.u<MediaSource.Factory>> mediaSourceFactorySuppliers = new HashMap();
        private final Set<Integer> supportedTypes = new HashSet();
        private final Map<Integer, MediaSource.Factory> mediaSourceFactories = new HashMap();

        private void f() {
            n(0);
            n(1);
            n(2);
            n(3);
            n(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ MediaSource.Factory m(DataSource.Factory factory) {
            return new ProgressiveMediaSource.Factory(factory, this.extractorsFactory);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x007a  */
        @Nullable
        private com.google.common.base.u<MediaSource.Factory> n(int i10) {
            com.google.common.base.u<MediaSource.Factory> uVar;
            com.google.common.base.u<MediaSource.Factory> uVar2;
            if (this.mediaSourceFactorySuppliers.containsKey(Integer.valueOf(i10))) {
                return this.mediaSourceFactorySuppliers.get(Integer.valueOf(i10));
            }
            final DataSource.Factory factory = (DataSource.Factory) Assertions.e(this.dataSourceFactory);
            com.google.common.base.u<MediaSource.Factory> uVar3 = null;
            try {
                if (i10 == 0) {
                    final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                    uVar = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.source.e
                        @Override // com.google.common.base.u
                        public final Object get() {
                            return DefaultMediaSourceFactory.g(clsAsSubclass, factory);
                        }
                    };
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                final Class<? extends U> clsAsSubclass2 = Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(MediaSource.Factory.class);
                                uVar2 = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.source.h
                                    @Override // com.google.common.base.u
                                    public final Object get() {
                                        return DefaultMediaSourceFactory.f(clsAsSubclass2);
                                    }
                                };
                            } else if (i10 == 4) {
                                uVar2 = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.source.i
                                    @Override // com.google.common.base.u
                                    public final Object get() {
                                        return this.f612a.m(factory);
                                    }
                                };
                            }
                            uVar3 = uVar2;
                        } else {
                            final Class clsAsSubclass3 = HlsMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                            uVar = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.source.g
                                @Override // com.google.common.base.u
                                public final Object get() {
                                    return DefaultMediaSourceFactory.g(clsAsSubclass3, factory);
                                }
                            };
                        }
                        this.mediaSourceFactorySuppliers.put(Integer.valueOf(i10), uVar3);
                        if (uVar3 != null) {
                            this.supportedTypes.add(Integer.valueOf(i10));
                        }
                        return uVar3;
                    }
                    final Class clsAsSubclass4 = SsMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                    uVar = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.source.f
                        @Override // com.google.common.base.u
                        public final Object get() {
                            return DefaultMediaSourceFactory.g(clsAsSubclass4, factory);
                        }
                    };
                }
                uVar3 = uVar;
            } catch (ClassNotFoundException unused) {
            }
            this.mediaSourceFactorySuppliers.put(Integer.valueOf(i10), uVar3);
            if (uVar3 != null) {
                this.supportedTypes.add(Integer.valueOf(i10));
            }
            return uVar3;
        }

        @Nullable
        public MediaSource.Factory g(int i10) {
            MediaSource.Factory factory = this.mediaSourceFactories.get(Integer.valueOf(i10));
            if (factory != null) {
                return factory;
            }
            com.google.common.base.u<MediaSource.Factory> uVarN = n(i10);
            if (uVarN == null) {
                return null;
            }
            MediaSource.Factory factory2 = uVarN.get();
            CmcdConfiguration.Factory factory3 = this.cmcdConfigurationFactory;
            if (factory3 != null) {
                factory2.c(factory3);
            }
            DrmSessionManagerProvider drmSessionManagerProvider = this.drmSessionManagerProvider;
            if (drmSessionManagerProvider != null) {
                factory2.a(drmSessionManagerProvider);
            }
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
            if (loadErrorHandlingPolicy != null) {
                factory2.b(loadErrorHandlingPolicy);
            }
            this.mediaSourceFactories.put(Integer.valueOf(i10), factory2);
            return factory2;
        }

        public void o(CmcdConfiguration.Factory factory) {
            this.cmcdConfigurationFactory = factory;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().c(factory);
            }
        }

        public void p(DataSource.Factory factory) {
            if (factory != this.dataSourceFactory) {
                this.dataSourceFactory = factory;
                this.mediaSourceFactorySuppliers.clear();
                this.mediaSourceFactories.clear();
            }
        }

        public void q(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = drmSessionManagerProvider;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().a(drmSessionManagerProvider);
            }
        }

        public void r(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().b(loadErrorHandlingPolicy);
            }
        }

        public DelegateFactoryLoader(ExtractorsFactory extractorsFactory) {
            this.extractorsFactory = extractorsFactory;
        }

        public int[] h() {
            f();
            return com.google.common.primitives.e.l(this.supportedTypes);
        }
    }

    public DefaultMediaSourceFactory(Context context) {
        this(new DefaultDataSource.Factory(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] h(Format format) {
        Extractor[] extractorArr = new Extractor[1];
        SubtitleDecoderFactory subtitleDecoderFactory = SubtitleDecoderFactory.DEFAULT;
        extractorArr[0] = subtitleDecoderFactory.a(format) ? new SubtitleExtractor(subtitleDecoderFactory.b(format), format) : new UnknownSubtitlesExtractor(format);
        return extractorArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource.Factory k(Class<? extends MediaSource.Factory> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource.Factory l(Class<? extends MediaSource.Factory> cls, DataSource.Factory factory) {
        try {
            return cls.getConstructor(DataSource.Factory.class).newInstance(factory);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static final class UnknownSubtitlesExtractor implements Extractor {
        private final Format format;

        @Override // androidx.media3.extractor.Extractor
        public void b(ExtractorOutput extractorOutput) {
            TrackOutput trackOutputTrack = extractorOutput.track(0, 3);
            extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
            extractorOutput.endTracks();
            trackOutputTrack.d(this.format.b().g0("text/x-unknown").K(this.format.sampleMimeType).G());
        }

        @Override // androidx.media3.extractor.Extractor
        public boolean d(ExtractorInput extractorInput) {
            return true;
        }

        @Override // androidx.media3.extractor.Extractor
        public void release() {
        }

        @Override // androidx.media3.extractor.Extractor
        public void seek(long j6, long j10) {
        }

        public UnknownSubtitlesExtractor(Format format) {
            this.format = format;
        }

        @Override // androidx.media3.extractor.Extractor
        public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
            if (extractorInput.skip(Integer.MAX_VALUE) == -1) {
                return -1;
            }
            return 0;
        }
    }

    @UnstableApi
    public DefaultMediaSourceFactory(Context context, ExtractorsFactory extractorsFactory) {
        this(new DefaultDataSource.Factory(context), extractorsFactory);
    }

    private static MediaSource i(MediaItem mediaItem, MediaSource mediaSource) {
        MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
        if (clippingConfiguration.startPositionMs == 0 && clippingConfiguration.endPositionMs == Long.MIN_VALUE && !clippingConfiguration.relativeToDefaultPosition) {
            return mediaSource;
        }
        long jK0 = Util.K0(mediaItem.clippingConfiguration.startPositionMs);
        long jK1 = Util.K0(mediaItem.clippingConfiguration.endPositionMs);
        MediaItem.ClippingConfiguration clippingConfiguration2 = mediaItem.clippingConfiguration;
        return new ClippingMediaSource(mediaSource, jK0, jK1, !clippingConfiguration2.startsAtKeyFrame, clippingConfiguration2.relativeToLiveWindow, clippingConfiguration2.relativeToDefaultPosition);
    }

    private MediaSource j(MediaItem mediaItem, MediaSource mediaSource) {
        Assertions.e(mediaItem.localConfiguration);
        MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
        if (adsConfiguration == null) {
            return mediaSource;
        }
        AdsLoader.Provider provider = this.adsLoaderProvider;
        AdViewProvider adViewProvider = this.adViewProvider;
        if (provider == null || adViewProvider == null) {
            Log.i(TAG, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
            return mediaSource;
        }
        AdsLoader adsLoaderA = provider.a(adsConfiguration);
        if (adsLoaderA == null) {
            Log.i(TAG, "Playing media without ads, as no AdsLoader was provided.");
            return mediaSource;
        }
        DataSpec dataSpec = new DataSpec(adsConfiguration.adTagUri);
        Object obj = adsConfiguration.adsId;
        return new AdsMediaSource(mediaSource, dataSpec, obj != null ? obj : com.google.common.collect.a0.A(mediaItem.mediaId, mediaItem.localConfiguration.uri, adsConfiguration.adTagUri), this, adsLoaderA, adViewProvider);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public MediaSource d(MediaItem mediaItem) {
        Assertions.e(mediaItem.localConfiguration);
        String scheme = mediaItem.localConfiguration.uri.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((MediaSource.Factory) Assertions.e(this.serverSideAdInsertionMediaSourceFactory)).d(mediaItem);
        }
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        int iX0 = Util.x0(localConfiguration.uri, localConfiguration.mimeType);
        MediaSource.Factory factoryG = this.delegateFactoryLoader.g(iX0);
        Assertions.j(factoryG, "No suitable media source factory found for content type: " + iX0);
        MediaItem.LiveConfiguration.Builder builderB = mediaItem.liveConfiguration.b();
        if (mediaItem.liveConfiguration.targetOffsetMs == -9223372036854775807L) {
            builderB.k(this.liveTargetOffsetMs);
        }
        if (mediaItem.liveConfiguration.minPlaybackSpeed == -3.4028235E38f) {
            builderB.j(this.liveMinSpeed);
        }
        if (mediaItem.liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            builderB.h(this.liveMaxSpeed);
        }
        if (mediaItem.liveConfiguration.minOffsetMs == -9223372036854775807L) {
            builderB.i(this.liveMinOffsetMs);
        }
        if (mediaItem.liveConfiguration.maxOffsetMs == -9223372036854775807L) {
            builderB.g(this.liveMaxOffsetMs);
        }
        MediaItem.LiveConfiguration liveConfigurationF = builderB.f();
        if (!liveConfigurationF.equals(mediaItem.liveConfiguration)) {
            mediaItem = mediaItem.b().d(liveConfigurationF).a();
        }
        MediaSource mediaSourceD = factoryG.d(mediaItem);
        com.google.common.collect.a0<MediaItem.SubtitleConfiguration> a0Var = ((MediaItem.LocalConfiguration) Util.j(mediaItem.localConfiguration)).subtitleConfigurations;
        if (!a0Var.isEmpty()) {
            MediaSource[] mediaSourceArr = new MediaSource[a0Var.size() + 1];
            mediaSourceArr[0] = mediaSourceD;
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                if (this.useProgressiveMediaSourceForSubtitles) {
                    final Format formatG = new Format.Builder().g0(a0Var.get(i10).mimeType).X(a0Var.get(i10).language).i0(a0Var.get(i10).selectionFlags).e0(a0Var.get(i10).roleFlags).W(a0Var.get(i10).label).U(a0Var.get(i10).id).G();
                    ProgressiveMediaSource.Factory factory = new ProgressiveMediaSource.Factory(this.dataSourceFactory, new ExtractorsFactory() { // from class: androidx.media3.exoplayer.source.d
                        @Override // androidx.media3.extractor.ExtractorsFactory
                        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
                            return androidx.media3.extractor.e.a(this, uri, map);
                        }

                        @Override // androidx.media3.extractor.ExtractorsFactory
                        public final Extractor[] createExtractors() {
                            return DefaultMediaSourceFactory.h(formatG);
                        }
                    });
                    LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
                    if (loadErrorHandlingPolicy != null) {
                        factory.b(loadErrorHandlingPolicy);
                    }
                    mediaSourceArr[i10 + 1] = factory.d(MediaItem.e(a0Var.get(i10).uri.toString()));
                } else {
                    SingleSampleMediaSource.Factory factory2 = new SingleSampleMediaSource.Factory(this.dataSourceFactory);
                    LoadErrorHandlingPolicy loadErrorHandlingPolicy2 = this.loadErrorHandlingPolicy;
                    if (loadErrorHandlingPolicy2 != null) {
                        factory2.b(loadErrorHandlingPolicy2);
                    }
                    mediaSourceArr[i10 + 1] = factory2.a(a0Var.get(i10), -9223372036854775807L);
                }
            }
            mediaSourceD = new MergingMediaSource(mediaSourceArr);
        }
        return j(mediaItem, i(mediaItem, mediaSourceD));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public int[] getSupportedTypes() {
        return this.delegateFactoryLoader.h();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public DefaultMediaSourceFactory c(CmcdConfiguration.Factory factory) {
        this.delegateFactoryLoader.o((CmcdConfiguration.Factory) Assertions.e(factory));
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public DefaultMediaSourceFactory a(DrmSessionManagerProvider drmSessionManagerProvider) {
        this.delegateFactoryLoader.q((DrmSessionManagerProvider) Assertions.f(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public DefaultMediaSourceFactory b(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.f(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.delegateFactoryLoader.r(loadErrorHandlingPolicy);
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory(DataSource.Factory factory) {
        this(factory, new DefaultExtractorsFactory());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ MediaSource.Factory f(Class cls) {
        return k(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ MediaSource.Factory g(Class cls, DataSource.Factory factory) {
        return l(cls, factory);
    }

    @UnstableApi
    public DefaultMediaSourceFactory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        this.dataSourceFactory = factory;
        DelegateFactoryLoader delegateFactoryLoader = new DelegateFactoryLoader(extractorsFactory);
        this.delegateFactoryLoader = delegateFactoryLoader;
        delegateFactoryLoader.p(factory);
        this.liveTargetOffsetMs = -9223372036854775807L;
        this.liveMinOffsetMs = -9223372036854775807L;
        this.liveMaxOffsetMs = -9223372036854775807L;
        this.liveMinSpeed = -3.4028235E38f;
        this.liveMaxSpeed = -3.4028235E38f;
    }
}
