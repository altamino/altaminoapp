package com.narvii.nvplayer.exoplayer;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.database.ExoDatabaseProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.ClippingMediaSource;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.LoopingMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory;
import com.google.android.exoplayer2.upstream.FileDataSourceFactory;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSinkFactory;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
import com.google.android.exoplayer2.upstream.cache.CacheUtil;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoListener;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Media;
import com.narvii.model.MediaHelper;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayer.NvVideoClip;
import com.narvii.nvplayer.VideoLogHelper;
import com.narvii.nvplayer.WindowIndexChangeListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.StorageUtils;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideo;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class NVExoPlayer implements INVPlayer, VideoListener, Player.EventListener {
    private static final long BETTER_PERFORMANCE_CACHE_SIZE = 104857600;
    private static final long DEFAULT_CACHE_SIZE = 41943040;
    private static final long DEFAULT_MAX_CACHE_FILE_SIZE = 2097152;
    public static final String LOW_RES = "360p";
    private static NVExoPlayer nvExoPlayer;
    private static int referenceCount;
    private ConcatenatingMediaSource concatenatingMediaSource;
    private int curBitRate;
    private boolean isYoutubeVideo;
    private int lastPlayState;
    private boolean lockMute;
    private Cache mCache;
    private File mCacheFile;
    private Context mContext;
    private SimpleExoPlayer mExoPlayer;
    private Surface mSurface;
    private IVideoListener mVideoListener;
    private NVMediaSource mediaSource;
    PriorityTaskManager priorityTaskManager;
    private VideoLogHelper videoLogHelper;
    private VideoPreloadDelegate videoPreloadDelegate;
    private YoutubeVideoList youtubeVideoList;
    private Map<String, Long> mPositionMap = new HashMap();
    private Map<Integer, Integer> mIndexMap = new HashMap();
    private List<WindowIndexChangeListener> windowIndexChangeListeners = new ArrayList();
    private int curWindowIndex = -1;
    private boolean settingFlag = false;
    private boolean firstFrameFlag = false;
    private long settingBeginTime = 0;
    private boolean concatenatingVideoCached = false;
    public boolean loadLowResVideo = false;
    public CacheKeyFactory cacheKeyFactory = new CacheKeyFactory() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.6
        @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
        public String buildCacheKey(DataSpec dataSpec) {
            if (dataSpec.uri.getHost() != null && dataSpec.uri.getHost().contains(NVApplication.MAIN_HOST)) {
                return Utils.getUrlWithoutQuery(dataSpec.uri.toString());
            }
            return dataSpec.uri.toString();
        }
    };

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ boolean isError() {
        return INVPlayer.CC.$default$isError(this);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onIsPlayingChanged(boolean z) {
        Player.EventListener.CC.$default$onIsPlayingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        Player.EventListener.CC.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        Player.EventListener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        Player.EventListener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onSeekProcessed() {
        Player.EventListener.CC.$default$onSeekProcessed(this);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
        Player.EventListener.CC.$default$onTimelineChanged(this, timeline, obj, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        Player.EventListener.CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setLoop(boolean z) {
    }

    private NVExoPlayer(Context context) {
        File cacheDir;
        boolean z;
        long availableExternalMemorySize;
        this.mContext = context;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector();
        DefaultBandwidthMeter defaultBandwidthMeterBuild = new DefaultBandwidthMeter.Builder(context).build();
        defaultBandwidthMeterBuild.addEventListener(Utils.handler, new BandwidthMeter.EventListener() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.1
            @Override // com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener
            public void onBandwidthSample(int i, long j, long j2) {
                if (NVVideoView.isDebug()) {
                    NVExoPlayer.this.curBitRate = (int) (j2 / 1000);
                    if (NVExoPlayer.this.mVideoListener != null) {
                        NVExoPlayer.this.mVideoListener.onPreloadStrategyChanged(NVExoPlayer.this.curBitRate + "kbps, " + ExoPreloadUtil.INSTANCE.preloadStrategyDebugInfo());
                    }
                }
            }
        });
        this.videoPreloadDelegate = new VideoPreloadDelegate(this);
        ExoPreloadUtil.INSTANCE.setVideoPreloadDelegate(this.videoPreloadDelegate);
        this.priorityTaskManager = new PriorityTaskManager();
        this.mExoPlayer = ExoPlayerFactory.newSimpleInstance(context, new DefaultRenderersFactory(context), defaultTrackSelector, new DefaultLoadControl.Builder().setAllocator(new DefaultAllocator(true, 65536)).createDefaultLoadControl(), (DrmSessionManager<FrameworkMediaCrypto>) null, defaultBandwidthMeterBuild);
        this.videoLogHelper = new VideoLogHelper(context, this);
        if (this.mCache == null) {
            File externalCacheDir = context.getExternalCacheDir();
            if (externalCacheDir == null || externalCacheDir.isDirectory()) {
                cacheDir = context.getCacheDir();
                z = true;
            } else {
                cacheDir = externalCacheDir;
                z = false;
            }
            if (z) {
                availableExternalMemorySize = (StorageUtils.getAvailableInternalMemorySize() * 5) / 100;
            } else {
                availableExternalMemorySize = (StorageUtils.getAvailableExternalMemorySize() * 5) / 100;
            }
            long jMin = Math.min(availableExternalMemorySize, 1 != 0 ? BETTER_PERFORMANCE_CACHE_SIZE : DEFAULT_CACHE_SIZE);
            this.mCacheFile = new File(cacheDir, "exo-cache");
            this.mCache = new SimpleCache(this.mCacheFile, new LeastRecentlyUsedCacheEvictor(jMin), new ExoDatabaseProvider(this.mContext));
        }
        this.mExoPlayer.addListener(this);
        this.mExoPlayer.addVideoListener(this);
        this.mExoPlayer.setForegroundMode(true);
    }

    public static NVExoPlayer getInstance(Context context) {
        referenceCount++;
        if (nvExoPlayer == null) {
            nvExoPlayer = new NVExoPlayer(context);
        }
        return nvExoPlayer;
    }

    public SimpleExoPlayer getExoPlayer() {
        return this.mExoPlayer;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoSurface(Surface surface) {
        this.mSurface = surface;
        this.mExoPlayer.setVideoSurface(surface);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public Surface getVideoSurface() {
        return this.mSurface;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setPlayWhenReady(boolean z) {
        setPlayWhenReady(z, false);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setPlayWhenReady(boolean z, boolean z2) {
        List arrayList;
        int iIntValue;
        int currentWindowIndex;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (arrayList = nVMediaSource.mediaList) == null) {
            arrayList = new ArrayList();
        }
        if (!z) {
            this.mExoPlayer.setPlayWhenReady(false);
            if (!z2 || (currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex()) < 0 || currentWindowIndex >= arrayList.size() || arrayList.get(currentWindowIndex) == null || ((Media) arrayList.get(currentWindowIndex)).url == null) {
                return;
            }
            this.mPositionMap.put(((Media) arrayList.get(currentWindowIndex)).url, Long.valueOf(getCurrentPosition()));
            this.mIndexMap.put(Integer.valueOf(arrayList.hashCode()), Integer.valueOf(currentWindowIndex));
            return;
        }
        if (z2 && this.mIndexMap.get(Integer.valueOf(arrayList.hashCode())) != null && (iIntValue = this.mIndexMap.get(Integer.valueOf(arrayList.hashCode())).intValue()) >= 0 && iIntValue < arrayList.size() && this.mPositionMap.get(((Media) arrayList.get(iIntValue)).url) != null) {
            seekTo(iIntValue, this.mPositionMap.get(((Media) arrayList.get(iIntValue)).url).longValue());
        }
        this.mExoPlayer.setPlayWhenReady(true);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean getPlayWhenReady() {
        return this.mExoPlayer.getPlayWhenReady();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekTo(long j) {
        if (j == 0) {
            this.videoLogHelper.playAnotherVideo(null);
        }
        this.mExoPlayer.seekTo(j);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekTo(long j, boolean z) {
        if (z) {
            this.mExoPlayer.seekTo(j);
        } else {
            seekTo(j);
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekToWindow(final int i) {
        List<Media> list;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || i < 0) {
            return;
        }
        if (i > list.size() - 1) {
            return;
        }
        String videoUrlWithRes = this.mediaSource.getVideoUrlWithRes(i, this.loadLowResVideo);
        if (videoUrlWithRes != null && this.mediaSource.mediaList.size() > i && isCached(videoUrlWithRes, 0L, getPreCachedSize())) {
            this.concatenatingVideoCached = true;
        }
        if (this.mediaSource.isPollOrQuiz()) {
            if (i == this.concatenatingMediaSource.getSize() - 1) {
                this.videoLogHelper.playAnotherVideo(null, i == 0);
                this.videoPreloadDelegate.onStateChanged(2);
                this.mExoPlayer.seekTo(i, 0L);
                return;
            } else {
                if (i > this.concatenatingMediaSource.getSize() - 1) {
                    this.concatenatingMediaSource.addMediaSource(getInnerExoMediaSource(this.loadLowResVideo, this.mediaSource.mediaList.get(i)), Utils.handler, new Runnable() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Timeline currentTimeline = NVExoPlayer.this.mExoPlayer.getCurrentTimeline();
                            if (currentTimeline.isEmpty() || i < currentTimeline.getWindowCount()) {
                                NVExoPlayer.this.videoLogHelper.playAnotherVideo(null, i == 0);
                                NVExoPlayer.this.videoPreloadDelegate.onStateChanged(2);
                                NVExoPlayer.this.mExoPlayer.seekTo(i, 0L);
                            }
                        }
                    });
                    return;
                }
                if (i < this.concatenatingMediaSource.getSize() - 1) {
                    this.videoLogHelper.playAnotherVideo(null, i == 0);
                    this.videoPreloadDelegate.onStateChanged(2);
                    this.mExoPlayer.seekTo(i, 0L);
                    ConcatenatingMediaSource concatenatingMediaSource = this.concatenatingMediaSource;
                    concatenatingMediaSource.removeMediaSourceRange(i + 1, concatenatingMediaSource.getSize());
                    return;
                }
                return;
            }
        }
        Timeline currentTimeline = this.mExoPlayer.getCurrentTimeline();
        if (currentTimeline.isEmpty() || i < currentTimeline.getWindowCount()) {
            this.videoLogHelper.playAnotherVideo(null, i == 0);
            this.videoPreloadDelegate.onStateChanged(2);
            this.mExoPlayer.seekTo(i, 0L);
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void addWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener) {
        if (this.windowIndexChangeListeners.contains(windowIndexChangeListener)) {
            return;
        }
        this.windowIndexChangeListeners.add(windowIndexChangeListener);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void removeWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener) {
        this.windowIndexChangeListeners.remove(windowIndexChangeListener);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getCurrentWindowIndex() {
        return this.curWindowIndex;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public VideoLogHelper getVideoLogHelper() {
        return this.videoLogHelper;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void preload(NVContext nVContext, List<Media> list) {
        ExoPreloadUtil.INSTANCE.startPreload(list, this, nVContext.getContext().getApplicationContext(), true);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isCached(String str, long j, long j2) {
        String urlWithoutQuery = Utils.getUrlWithoutQuery(str);
        long j3 = this.mCache.getContentMetadata(urlWithoutQuery).get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
        if (j3 == -1) {
            return this.mCache.isCached(urlWithoutQuery, j, j2);
        }
        return this.mCache.isCached(urlWithoutQuery, j, Math.min(j3, j2));
    }

    public void seekTo(int i, long j) {
        this.mExoPlayer.seekTo(i, j);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void reset() {
        this.mediaSource = null;
        this.mExoPlayer.stop(true);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void release() {
        referenceCount--;
        if (referenceCount == 0) {
            this.mExoPlayer.release();
            nvExoPlayer = null;
            this.mCache.release();
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clearVideoSurface() {
        this.mExoPlayer.clearVideoSurface();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getPlayerState() {
        return this.mExoPlayer.getPlaybackState();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isPlaying() {
        return this.mExoPlayer.getPlayWhenReady() && getPlayerState() == 3;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getCurrentPosition() {
        return Math.max(0L, this.mExoPlayer.getCurrentPosition());
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getDuration() {
        return this.mExoPlayer.getDuration();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getTotalDuration() {
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null && nVMediaSource.mediaList != null) {
            long j = 0;
            for (int i = 0; i < this.mediaSource.mediaList.size(); i++) {
                j += this.mediaSource.mediaList.get(i).duration;
            }
            return j;
        }
        return this.mExoPlayer.getDuration();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public NVMediaSource getMediaSource() {
        return this.mediaSource;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public String getPlayingUrl() {
        List<Media> list;
        int currentWindowIndex;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || list.size() == 0 || (currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex()) < 0 || currentWindowIndex >= this.mediaSource.mediaList.size()) {
            return null;
        }
        return this.mediaSource.mediaList.get(currentWindowIndex).getMediaUrl();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVolume(float f) {
        if (this.lockMute) {
            return;
        }
        this.mExoPlayer.setVolume(f);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoListener(IVideoListener iVideoListener) {
        this.mVideoListener = iVideoListener;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clearVideoListener(IVideoListener iVideoListener) {
        if (this.mVideoListener == iVideoListener) {
            this.mVideoListener = null;
        }
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onVideoSizeChanged(i, i2);
            this.mVideoListener.onVideoSizeChanged(i, i2, i3, f);
        }
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onSurfaceSizeChanged(i, i2);
        }
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public void onRenderedFirstFrame() {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onRenderedFirstFrame();
            if (this.firstFrameFlag) {
                this.mVideoListener.onRenderFirstFrameInterval(System.currentTimeMillis() - this.settingBeginTime);
                this.firstFrameFlag = false;
            }
            if (NVVideoView.isDebug()) {
                this.mVideoListener.onPreloadStrategyChanged(this.curBitRate + "kbps, " + ExoPreloadUtil.INSTANCE.preloadStrategyDebugInfo());
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z, int i) {
        IVideoListener iVideoListener;
        this.videoLogHelper.onPlayerStateChanged(i);
        if (this.mVideoListener != null) {
            if (i == 2 && this.concatenatingVideoCached) {
                this.concatenatingVideoCached = false;
                return;
            }
            this.mVideoListener.onPlayerStateChanged(z, i);
        }
        if (this.mediaSource != null && i == 4 && this.lastPlayState != 4) {
            Log.d(INVPlayer.TAG, "ended!!!");
            if (this.mediaSource.isPollOrQuiz()) {
                if (this.concatenatingMediaSource.getSize() < this.mediaSource.mediaList.size()) {
                    Media media = this.mediaSource.mediaList.get(this.concatenatingMediaSource.getSize());
                    if (media != null) {
                        this.concatenatingMediaSource.addMediaSource(getInnerExoMediaSource(this.loadLowResVideo, media), Utils.handler, new Runnable() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (NVExoPlayer.this.mVideoListener == null || !NVExoPlayer.this.mVideoListener.shouldPauseForPageAboveVideo(NVExoPlayer.this.mExoPlayer.getCurrentWindowIndex())) {
                                    NVExoPlayer nVExoPlayer = NVExoPlayer.this;
                                    nVExoPlayer.seekToWindow(nVExoPlayer.mExoPlayer.getCurrentWindowIndex() + 1);
                                    NVExoPlayer.this.setPlayWhenReady(true);
                                }
                            }
                        });
                    }
                } else if (this.concatenatingMediaSource.getSize() == this.mediaSource.mediaList.size() && ((iVideoListener = this.mVideoListener) == null || !iVideoListener.shouldPauseForPageAboveVideo(this.mExoPlayer.getCurrentWindowIndex()))) {
                    seekToWindow(0);
                    setPlayWhenReady(true);
                }
            } else if (!this.mediaSource.isLoop()) {
                IVideoListener iVideoListener2 = this.mVideoListener;
                if (iVideoListener2 != null) {
                    iVideoListener2.shouldPauseForPageAboveVideo(this.mExoPlayer.getCurrentWindowIndex());
                } else {
                    seekToWindow(0);
                    setPlayWhenReady(true);
                }
            }
        }
        this.lastPlayState = i;
        this.videoPreloadDelegate.onStateChanged(i);
    }

    private MediaSource getInnerExoMediaSource(boolean z, Media media) {
        return getInnerExoMediaSource(NVApplication.instance(), Uri.parse(z ? Utils.getLowResVideoUrl(media.url) : media.url));
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        String message;
        YoutubeVideoList youtubeVideoList;
        YoutubeVideo youtubeVideoFindVideoInTargetList;
        int i = -2;
        if (exoPlaybackException != null) {
            message = exoPlaybackException.getMessage();
            int i2 = exoPlaybackException.type;
            if (i2 == 0) {
                IVideoListener iVideoListener = this.mVideoListener;
                if (iVideoListener != null) {
                    iVideoListener.onPlayerError(new NVVideoException("ExoPlayer error: " + exoPlaybackException.getSourceException().getMessage()));
                }
                removeVideoCacheWhenError();
                if (this.isYoutubeVideo && (youtubeVideoList = this.youtubeVideoList) != null && (youtubeVideoFindVideoInTargetList = youtubeVideoList.findVideoInTargetList(youtubeVideoList.list, LOW_RES, null)) != null && !TextUtils.isEmpty(youtubeVideoFindVideoInTargetList.url)) {
                    NVMediaSource nVMediaSource = this.mediaSource;
                    NVMediaSource nVMediaSource2 = new NVMediaSource();
                    nVMediaSource2.mediaList = new ArrayList();
                    Media media = new Media();
                    media.url = youtubeVideoFindVideoInTargetList.url;
                    media.type = 102;
                    nVMediaSource2.mediaList.add(media);
                    quickSetting(NVApplication.instance(), nVMediaSource2, this.mSurface);
                    this.mediaSource = nVMediaSource;
                }
                i = 1;
            } else if (i2 == 1) {
                IVideoListener iVideoListener2 = this.mVideoListener;
                if (iVideoListener2 != null) {
                    iVideoListener2.onPlayerError(new NVVideoException("ExoPlayer error: " + exoPlaybackException.getRendererException().getLocalizedMessage()));
                }
                i = 2;
            } else if (i2 == 2 && this.mVideoListener != null) {
                if (exoPlaybackException.getUnexpectedException().getStackTrace() != null && exoPlaybackException.getUnexpectedException().getStackTrace().length >= 1) {
                    this.mVideoListener.onPlayerError(new NVVideoException("ExoPlayer error: " + exoPlaybackException.getUnexpectedException().getStackTrace()[0]));
                } else {
                    this.mVideoListener.onPlayerError(new NVVideoException("ExoPlayer error: " + exoPlaybackException.getUnexpectedException()));
                }
            }
        } else {
            message = null;
        }
        this.videoLogHelper.onPlayError(i, message);
        removeVideoCacheWhenError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepare(MediaSource mediaSource, Surface surface) {
        this.videoLogHelper.onPlayerStateChanged(2);
        this.mExoPlayer.prepare(mediaSource);
        if (surface != null) {
            setVideoSurface(surface);
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void concatenatingQuickSetting(Context context, List<NvVideoClip> list) {
        NVMediaSource nVMediaSource = new NVMediaSource();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            NvVideoClip nvVideoClip = list.get(i);
            if (nvVideoClip != null && !TextUtils.isEmpty(nvVideoClip.url)) {
                Media media = new Media();
                media.type = YoutubeUtils.isYtvScheme(nvVideoClip.url) ? 103 : 102;
                media.url = nvVideoClip.url;
                arrayList.add(media);
            }
        }
        nVMediaSource.mediaList = arrayList;
        this.mediaSource = nVMediaSource;
        ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (int i2 = 0; i2 < list.size(); i2++) {
            NvVideoClip nvVideoClip2 = list.get(i2);
            if (nvVideoClip2 != null && !TextUtils.isEmpty(nvVideoClip2.url)) {
                concatenatingMediaSource.addMediaSource(new ClippingMediaSource(getInnerExoMediaSource(context, Uri.parse(nvVideoClip2.url)), nvVideoClip2.startPositionUs, nvVideoClip2.endPositionUs));
            }
        }
        prepare(concatenatingMediaSource, null);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void quickSetting(final Context context, NVMediaSource nVMediaSource, final Surface surface) {
        List<Media> list;
        clearVideoSurface();
        reset();
        this.settingFlag = true;
        this.firstFrameFlag = true;
        this.settingBeginTime = System.currentTimeMillis();
        this.mediaSource = nVMediaSource;
        this.concatenatingMediaSource = null;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerStateChanged(false, 1);
        }
        this.curWindowIndex = -1;
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext == null || (list = nVMediaSource.mediaList) == null || list.size() == 0) {
            return;
        }
        PhotoManager photoManager = (PhotoManager) nVContext.getService("photo");
        ArrayList arrayList = new ArrayList();
        for (Media media : nVMediaSource.mediaList) {
            if (media.isVideo()) {
                arrayList.add(media);
            }
            String str = media.url;
            if ("photo".equals(Uri.parse(str).getScheme())) {
                media.url = "file://" + photoManager.getPath(str).getAbsolutePath();
            }
        }
        if (arrayList.size() > 0 && ((Media) arrayList.get(0)).url != null) {
            this.mediaSource.setVideoSupportLowRes(Utils.videoSupportLowBitrate(((Media) arrayList.get(0)).url));
        }
        if (getMediaSource() != null) {
            this.videoLogHelper.playAnotherVideo(getMediaSource());
        }
        boolean z = arrayList.size() == 1;
        this.youtubeVideoList = null;
        if (z) {
            Media media2 = (Media) arrayList.get(0);
            if (YoutubeUtils.isYtvScheme(media2.url)) {
                this.isYoutubeVideo = true;
                final String str2 = media2.url;
                YoutubeService youtubeService = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
                this.videoLogHelper.onPlayerStateChanged(2);
                youtubeService.exec(YoutubeUtils.getYoutubeVideoIdFromUrl(str2), null, new YoutubeVideoCallback() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.4
                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFinish(String str3, YoutubeVideoList youtubeVideoList) {
                        if (NVExoPlayer.this.isCurrentYtvUrl(str2)) {
                            NVExoPlayer.this.youtubeVideoList = youtubeVideoList;
                            String url = youtubeVideoList.getUrl();
                            NVExoPlayer nVExoPlayer = NVExoPlayer.this;
                            nVExoPlayer.prepare(nVExoPlayer.getExoMediaSource(context, url), surface);
                        }
                    }

                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFail(String str3, int i, String str4) {
                        if (NVExoPlayer.this.isCurrentYtvUrl(str2)) {
                            NVExoPlayer.this.videoLogHelper.onPlayError(1);
                            if (NVExoPlayer.this.mVideoListener != null) {
                                NVExoPlayer.this.mVideoListener.onPlayerError(new NVVideoException(str4));
                            }
                        }
                    }
                });
                return;
            }
            this.isYoutubeVideo = false;
            prepare(getExoMediaSource(context, nVMediaSource), surface);
            return;
        }
        this.isYoutubeVideo = false;
        prepare(getExoMediaSource(context, nVMediaSource), surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentYtvUrl(String str) {
        NVMediaSource nVMediaSource = this.mediaSource;
        return (nVMediaSource == null || nVMediaSource.mediaList.size() == 0 || !TextUtils.equals(this.mediaSource.mediaList.get(0).url, str)) ? false : true;
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPositionDiscontinuity(int i) {
        ConcatenatingMediaSource concatenatingMediaSource;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPositionDiscontinuity(i);
        }
        int currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex();
        if (currentWindowIndex != this.curWindowIndex) {
            this.curWindowIndex = currentWindowIndex;
            Iterator<WindowIndexChangeListener> it = this.windowIndexChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onWindowIndexChanged(this.curWindowIndex);
            }
            this.firstFrameFlag = true;
            this.settingBeginTime = System.currentTimeMillis();
        }
        this.videoLogHelper.onPositionDiscontinuity(i);
        if (i != 0 || getPlayerState() != 3 || (concatenatingMediaSource = this.concatenatingMediaSource) == null || concatenatingMediaSource.getSize() <= 1) {
            return;
        }
        this.videoPreloadDelegate.onPositionDiscontinuity();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clear() {
        File file = this.mCacheFile;
        if (file != null) {
            try {
                Utils.deleteContents(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        release();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long size() {
        return Utils.getFolderSize(this.mCacheFile);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void lockMute(boolean z) {
        this.lockMute = z;
    }

    public Cache getCache() {
        return this.mCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaSource getExoMediaSource(Context context, String str) {
        MediaSource innerExoMediaSource = getInnerExoMediaSource(context, Uri.parse(str));
        if (innerExoMediaSource == null) {
            return null;
        }
        return this.mediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
    }

    private MediaSource getExoMediaSource(Context context, String[] strArr) {
        MediaSource innerExoMediaSource = getInnerExoMediaSource(context, strArr);
        if (innerExoMediaSource == null) {
            return null;
        }
        return this.mediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
    }

    private MediaSource getExoMediaSource(Context context, NVMediaSource nVMediaSource) {
        List<Media> list;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null) {
            return null;
        }
        String[] videoUrlsFromMediaList = MediaHelper.getVideoUrlsFromMediaList(list);
        if (nVMediaSource.isPollOrQuiz()) {
            return getInnerExoMediaSource(context, new String[]{videoUrlsFromMediaList[0]});
        }
        MediaSource innerExoMediaSource = getInnerExoMediaSource(context, videoUrlsFromMediaList);
        if (innerExoMediaSource == null) {
            return null;
        }
        return nVMediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
    }

    private MediaSource getInnerExoMediaSource(Context context, String[] strArr) {
        IVideoListener iVideoListener;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        if (NVVideoView.isDebug() && (iVideoListener = this.mVideoListener) != null) {
            iVideoListener.onVideoSupportLowResVideo(this.mediaSource.isVideoSupportLowRes());
        }
        boolean z = this.loadLowResVideo;
        this.concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (int i = 0; i < strArr.length; i++) {
            if (!com.narvii.util.text.TextUtils.isEmpty(strArr[i])) {
                this.concatenatingMediaSource.addMediaSource(getInnerExoMediaSource(context, Uri.parse(z ? Utils.getLowResVideoUrl(strArr[i]) : strArr[i])));
            }
        }
        return this.concatenatingMediaSource;
    }

    private MediaSource getInnerExoMediaSource(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if ("asset".equals(scheme) || "file".equals(scheme) || this.mediaSource.getNotCache()) {
            return buildMediaSource(uri, getDataSourceFactory(uri, context), context);
        }
        return buildMediaSource(uri, createCacheDataSourceFactory(uri, context), context);
    }

    public NVCacheDataSourceFactory createCacheDataSourceFactory(Uri uri, Context context) {
        return new NVCacheDataSourceFactory(this.mCache, getDataSourceFactory(uri, context), new FileDataSourceFactory(), new CacheDataSinkFactory(this.mCache, 2097152L), 2, new CacheDataSource.EventListener() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.5
            @Override // com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener
            public void onCacheIgnored(int i) {
            }

            @Override // com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener
            public void onCachedBytesRead(long j, long j2) {
                if (!NVExoPlayer.this.settingFlag || NVExoPlayer.this.mVideoListener == null) {
                    return;
                }
                NVExoPlayer.this.mVideoListener.onCachedBytesRead(j, j2);
                NVExoPlayer.this.settingFlag = false;
            }
        }, this.cacheKeyFactory);
    }

    public void videoResUpgrade() {
        NVMediaSource nVMediaSource;
        List<Media> list;
        this.loadLowResVideo = false;
        if (this.concatenatingMediaSource == null || (nVMediaSource = this.mediaSource) == null || (list = nVMediaSource.mediaList) == null || list.size() < 1) {
            return;
        }
        int currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex();
        int size = this.concatenatingMediaSource.getSize();
        if (currentWindowIndex < size - 1) {
            int i = currentWindowIndex + 1;
            this.concatenatingMediaSource.removeMediaSourceRange(i, size);
            ArrayList arrayList = new ArrayList();
            while (i < size) {
                arrayList.add(getInnerExoMediaSource(this.mContext, Uri.parse(this.mediaSource.mediaList.get(i).url)));
                i++;
            }
            this.concatenatingMediaSource.addMediaSources(arrayList);
        }
    }

    public void videoResDowngrade() {
        NVMediaSource nVMediaSource;
        List<Media> list;
        this.loadLowResVideo = true;
        if (this.concatenatingMediaSource == null || (nVMediaSource = this.mediaSource) == null || (list = nVMediaSource.mediaList) == null || list.size() < 1) {
            return;
        }
        int currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex();
        int size = this.concatenatingMediaSource.getSize();
        if (currentWindowIndex < size - 1) {
            int i = currentWindowIndex + 1;
            this.concatenatingMediaSource.removeMediaSourceRange(i, size);
            ArrayList arrayList = new ArrayList();
            while (i < size) {
                arrayList.add(getInnerExoMediaSource(this.mContext, Uri.parse(Utils.getLowResVideoUrl(this.mediaSource.mediaList.get(i).url))));
                i++;
            }
            this.concatenatingMediaSource.addMediaSources(arrayList);
        }
    }

    public void updatePreloadLevel() {
        IVideoListener iVideoListener;
        if (!NVVideoView.isDebug() || (iVideoListener = this.mVideoListener) == null) {
            return;
        }
        iVideoListener.onPreloadStrategyChanged(this.curBitRate + "kbps, " + ExoPreloadUtil.INSTANCE.preloadStrategyDebugInfo());
    }

    public int getSize() {
        ConcatenatingMediaSource concatenatingMediaSource = this.concatenatingMediaSource;
        if (concatenatingMediaSource != null) {
            return concatenatingMediaSource.getSize();
        }
        return 0;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isLoadLowResVideo() {
        return this.loadLowResVideo;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getPreCachedSize() {
        if (this.loadLowResVideo) {
            return INVPlayer.LOW_RES_CACHED_SIZE;
        }
        return 1048576L;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void retry() {
        quickSetting(NVApplication.instance(), this.mediaSource, this.mSurface);
    }

    private DataSource.Factory getDataSourceFactory(Uri uri, Context context) {
        String scheme = uri.getScheme();
        if ("asset".equals(scheme) || "file".equals(scheme)) {
            return new DefaultDataSourceFactory(context, "ExoPlayer");
        }
        return new DefaultHttpDataSourceFactory("ExoPlayer", null, 8000, 8000, true);
    }

    private MediaSource buildMediaSource(Uri uri, DataSource.Factory factory, Context context) {
        int iInferContentType = Util.inferContentType(uri.getLastPathSegment());
        if (iInferContentType == 0) {
            return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(factory), new DefaultDataSourceFactory(context, (TransferListener) null, factory)).createMediaSource(uri);
        }
        if (iInferContentType == 1) {
            return new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory), new DefaultDataSourceFactory(context, (TransferListener) null, factory)).createMediaSource(uri);
        }
        if (iInferContentType == 2) {
            return new HlsMediaSource.Factory(factory).createMediaSource(uri);
        }
        if (iInferContentType == 3) {
            return new ExtractorMediaSource.Factory(factory).setExtractorsFactory(new DefaultExtractorsFactory()).createMediaSource(uri);
        }
        throw new IllegalStateException("Unsupported type: " + iInferContentType);
    }

    public VideoPreloadDelegate getVideoPreloadDelegate() {
        return this.videoPreloadDelegate;
    }

    private void removeVideoCacheWhenError() {
        List<Media> list;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || this.curWindowIndex >= list.size()) {
            return;
        }
        for (int i = 0; i < this.mediaSource.mediaList.size(); i++) {
            Media media = this.mediaSource.mediaList.get(i);
            CacheUtil.remove(this.mCache, Utils.getUrlWithoutQuery(media.url));
            CacheUtil.remove(this.mCache, Utils.getUrlWithoutQuery(Utils.getLowResVideoUrl(media.url)));
        }
    }
}
