package com.narvii.nvplayer.exoplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.c0;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.ExoDatabaseProvider;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSourceFactory;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSink;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.datasource.cache.CacheSpan;
import androidx.media3.datasource.cache.ContentMetadata;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import androidx.media3.datasource.cache.SimpleCache;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.dash.DefaultDashChunkSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.smoothstreaming.DefaultSsChunkSource;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.ConcatenatingMediaSource;
import androidx.media3.exoplayer.source.LoopingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.extractor.DefaultExtractorsFactory;
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
import com.narvii.util.text.TextUtils;
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

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class NVExoPlayer implements INVPlayer, Player.Listener {
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
    private ExoPlayer mExoPlayer;
    private Surface mSurface;
    private IVideoListener mVideoListener;
    private NVMediaSource mediaSource;
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
    public CacheKeyFactory cacheKeyFactory = new CacheKeyFactory() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.5
        @Override // androidx.media3.datasource.cache.CacheKeyFactory
        public String buildCacheKey(DataSpec dataSpec) {
            return (dataSpec.uri.getHost() == null || !dataSpec.uri.getHost().contains(NVApplication.mainHost)) ? dataSpec.uri.toString() : Utils.getUrlWithoutQuery(dataSpec.uri.toString());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public MediaSource getExoMediaSource(Context context, String str) {
        MediaSource innerExoMediaSource = getInnerExoMediaSource(context, Uri.parse(str));
        if (innerExoMediaSource == null) {
            return null;
        }
        return this.mediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
    }

    private MediaSource getInnerExoMediaSource(boolean z6, Media media) {
        return getInnerExoMediaSource(NVApplication.instance(), Uri.parse(z6 ? Utils.getLowResVideoUrl(media.url) : media.url));
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clearVideoListener(IVideoListener iVideoListener) {
        if (this.mVideoListener == iVideoListener) {
            this.mVideoListener = null;
        }
    }

    public Cache getCache() {
        return this.mCache;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getCurrentWindowIndex() {
        return this.curWindowIndex;
    }

    public ExoPlayer getExoPlayer() {
        return this.mExoPlayer;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public NVMediaSource getMediaSource() {
        return this.mediaSource;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getPreCachedSize() {
        if (this.loadLowResVideo) {
            return INVPlayer.LOW_RES_CACHED_SIZE;
        }
        return 1048576L;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public VideoLogHelper getVideoLogHelper() {
        return this.videoLogHelper;
    }

    public VideoPreloadDelegate getVideoPreloadDelegate() {
        return this.videoPreloadDelegate;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public Surface getVideoSurface() {
        return this.mSurface;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ boolean isError() {
        return com.narvii.nvplayer.a.b(this);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isLoadLowResVideo() {
        return this.loadLowResVideo;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void lockMute(boolean z6) {
        this.lockMute = z6;
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        c0.a(this, audioAttributes);
    }

    @UnstableApi
    public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i10) {
        c0.b(this, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        c0.c(this, commands);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onCues(CueGroup cueGroup) {
        c0.d(this, cueGroup);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        c0.f(this, deviceInfo);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
        c0.g(this, i10, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onEvents(Player player, Player.Events events) {
        c0.h(this, player, events);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z6) {
        c0.i(this, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z6) {
        c0.j(this, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    @UnstableApi
    @Deprecated
    public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z6) {
        c0.k(this, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j6) {
        c0.l(this, j6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onMediaItemTransition(@Nullable MediaItem mediaItem, int i10) {
        c0.m(this, mediaItem, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        c0.n(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    @UnstableApi
    public /* bridge */ /* synthetic */ void onMetadata(Metadata metadata) {
        c0.o(this, metadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i10) {
        c0.p(this, z6, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        c0.q(this, playbackParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlaybackStateChanged(int i10) {
        c0.r(this, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
        c0.s(this, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
        c0.u(this, playbackException);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        c0.w(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
        c0.y(this, positionInfo, positionInfo2, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i10) {
        c0.A(this, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j6) {
        c0.B(this, j6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j6) {
        c0.C(this, j6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
        c0.D(this, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
        c0.E(this, z6);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
        c0.G(this, timeline, i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        c0.H(this, trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onTracksChanged(Tracks tracks) {
        c0.I(this, tracks);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onVolumeChanged(float f) {
        c0.K(this, f);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void reset() {
        this.mediaSource = null;
        this.mExoPlayer.G();
        this.mExoPlayer.stop();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekTo(long j6) {
        if (j6 == 0) {
            this.videoLogHelper.playAnotherVideo(null);
        }
        this.mExoPlayer.seekTo(j6);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setLoop(boolean z6) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setPlayWhenReady(boolean z6) {
        setPlayWhenReady(z6, false);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoListener(IVideoListener iVideoListener) {
        this.mVideoListener = iVideoListener;
    }

    public void videoResDowngrade() {
        NVMediaSource nVMediaSource;
        List<Media> list;
        this.loadLowResVideo = true;
        if (this.concatenatingMediaSource == null || (nVMediaSource = this.mediaSource) == null || (list = nVMediaSource.mediaList) == null || list.size() < 1) {
            return;
        }
        int currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex();
        int iO0 = this.concatenatingMediaSource.O0();
        if (currentWindowIndex < iO0 - 1) {
            int i10 = currentWindowIndex + 1;
            this.concatenatingMediaSource.V0(i10, iO0);
            ArrayList arrayList = new ArrayList();
            while (i10 < iO0) {
                arrayList.add(getInnerExoMediaSource(this.mContext, Uri.parse(Utils.getLowResVideoUrl(this.mediaSource.mediaList.get(i10).url))));
                i10++;
            }
            this.concatenatingMediaSource.B0(arrayList);
        }
    }

    public void videoResUpgrade() {
        NVMediaSource nVMediaSource;
        List<Media> list;
        this.loadLowResVideo = false;
        if (this.concatenatingMediaSource == null || (nVMediaSource = this.mediaSource) == null || (list = nVMediaSource.mediaList) == null || list.size() < 1) {
            return;
        }
        int currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex();
        int iO0 = this.concatenatingMediaSource.O0();
        if (currentWindowIndex < iO0 - 1) {
            int i10 = currentWindowIndex + 1;
            this.concatenatingMediaSource.V0(i10, iO0);
            ArrayList arrayList = new ArrayList();
            while (i10 < iO0) {
                arrayList.add(getInnerExoMediaSource(this.mContext, Uri.parse(this.mediaSource.mediaList.get(i10).url)));
                i10++;
            }
            this.concatenatingMediaSource.B0(arrayList);
        }
    }

    @Nullable
    private MediaSource getInnerExoMediaSource(Context context, String[] strArr) {
        IVideoListener iVideoListener;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        if (NVVideoView.isDebug() && (iVideoListener = this.mVideoListener) != null) {
            iVideoListener.onVideoSupportLowResVideo(this.mediaSource.isVideoSupportLowRes());
        }
        boolean z6 = this.loadLowResVideo;
        this.concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (!TextUtils.isEmpty(strArr[i10])) {
                this.concatenatingMediaSource.y0(getInnerExoMediaSource(context, Uri.parse(z6 ? Utils.getLowResVideoUrl(strArr[i10]) : strArr[i10])));
            }
        }
        return this.concatenatingMediaSource;
    }

    public static NVExoPlayer getInstance(Context context) {
        referenceCount++;
        if (nvExoPlayer == null) {
            nvExoPlayer = new NVExoPlayer(context);
        }
        return nvExoPlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentYtvUrl(String str) {
        NVMediaSource nVMediaSource = this.mediaSource;
        return (nVMediaSource == null || nVMediaSource.mediaList.size() == 0 || !android.text.TextUtils.equals(this.mediaSource.mediaList.get(0).url, str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepare(MediaSource mediaSource, Surface surface) {
        this.videoLogHelper.onPlayerStateChanged(2);
        this.mExoPlayer.O(mediaSource);
        this.mExoPlayer.prepare();
        if (surface != null) {
            setVideoSurface(surface);
        }
    }

    private void removeCache(Cache cache, String str) {
        Iterator<CacheSpan> it = this.mCache.getCachedSpans(str).iterator();
        while (it.hasNext()) {
            cache.a(it.next());
        }
    }

    private void removeVideoCacheWhenError() {
        List<Media> list;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || this.curWindowIndex >= list.size()) {
            return;
        }
        for (int i10 = 0; i10 < this.mediaSource.mediaList.size(); i10++) {
            Media media = this.mediaSource.mediaList.get(i10);
            String urlWithoutQuery = Utils.getUrlWithoutQuery(media.url);
            String urlWithoutQuery2 = Utils.getUrlWithoutQuery(Utils.getLowResVideoUrl(media.url));
            removeCache(this.mCache, urlWithoutQuery);
            removeCache(this.mCache, urlWithoutQuery2);
        }
    }

    private void sendCauseToListener(PlaybackException playbackException) {
        if (this.mVideoListener != null) {
            this.mVideoListener.onPlayerError(new NVVideoException("ExoPlayer error: " + getCauseString(playbackException)));
        }
    }

    private void sendErrorToListener(PlaybackException playbackException) {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerError(new NVVideoException("ExoPlayer error: " + playbackException.getLocalizedMessage()));
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
    public void clearVideoSurface() {
        this.mExoPlayer.clearVideoSurface();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void concatenatingQuickSetting(Context context, @NonNull List<NvVideoClip> list) {
        NVMediaSource nVMediaSource = new NVMediaSource();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            NvVideoClip nvVideoClip = list.get(i10);
            if (nvVideoClip != null && !android.text.TextUtils.isEmpty(nvVideoClip.url)) {
                Media media = new Media();
                media.type = YoutubeUtils.isYtvScheme(nvVideoClip.url) ? 103 : 102;
                media.url = nvVideoClip.url;
                arrayList.add(media);
            }
        }
        nVMediaSource.mediaList = arrayList;
        this.mediaSource = nVMediaSource;
        ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (int i11 = 0; i11 < list.size(); i11++) {
            NvVideoClip nvVideoClip2 = list.get(i11);
            if (nvVideoClip2 != null && !android.text.TextUtils.isEmpty(nvVideoClip2.url)) {
                concatenatingMediaSource.y0(new ClippingMediaSource(getInnerExoMediaSource(context, Uri.parse(nvVideoClip2.url)), nvVideoClip2.startPositionUs, nvVideoClip2.endPositionUs));
            }
        }
        prepare(concatenatingMediaSource, null);
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
    public boolean getPlayWhenReady() {
        return this.mExoPlayer.getPlayWhenReady();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getPlayerState() {
        return this.mExoPlayer.getPlaybackState();
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

    public int getSize() {
        ConcatenatingMediaSource concatenatingMediaSource = this.concatenatingMediaSource;
        if (concatenatingMediaSource != null) {
            return concatenatingMediaSource.O0();
        }
        return 0;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getTotalDuration() {
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || nVMediaSource.mediaList == null) {
            return this.mExoPlayer.getDuration();
        }
        long j6 = 0;
        for (int i10 = 0; i10 < this.mediaSource.mediaList.size(); i10++) {
            j6 += this.mediaSource.mediaList.get(i10).duration;
        }
        return j6;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isPlaying() {
        return this.mExoPlayer.getPlayWhenReady() && getPlayerState() == 3;
    }

    @Override // androidx.media3.common.Player.Listener
    @UnstableApi
    @Deprecated
    public /* bridge */ /* synthetic */ void onCues(List list) {
        c0.e(this, list);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerStateChanged(boolean z6, int i10) {
        IVideoListener iVideoListener;
        this.videoLogHelper.onPlayerStateChanged(i10);
        IVideoListener iVideoListener2 = this.mVideoListener;
        if (iVideoListener2 != null) {
            if (i10 == 2 && this.concatenatingVideoCached) {
                this.concatenatingVideoCached = false;
                return;
            }
            iVideoListener2.onPlayerStateChanged(z6, i10);
        }
        if (this.mediaSource != null && i10 == 4 && this.lastPlayState != 4) {
            Log.d(INVPlayer.TAG, "ended!!!");
            if (this.mediaSource.isPollOrQuiz()) {
                if (this.concatenatingMediaSource.O0() < this.mediaSource.mediaList.size()) {
                    Media media = this.mediaSource.mediaList.get(this.concatenatingMediaSource.O0());
                    if (media != null) {
                        this.concatenatingMediaSource.z0(getInnerExoMediaSource(this.loadLowResVideo, media), Utils.handler, new Runnable() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.2
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
                } else if (this.concatenatingMediaSource.O0() == this.mediaSource.mediaList.size() && ((iVideoListener = this.mVideoListener) == null || !iVideoListener.shouldPauseForPageAboveVideo(this.mExoPlayer.getCurrentWindowIndex()))) {
                    seekToWindow(0);
                    setPlayWhenReady(true);
                }
            } else if (!this.mediaSource.isLoop()) {
                IVideoListener iVideoListener3 = this.mVideoListener;
                if (iVideoListener3 != null) {
                    iVideoListener3.shouldPauseForPageAboveVideo(this.mExoPlayer.getCurrentWindowIndex());
                } else {
                    seekToWindow(0);
                    setPlayWhenReady(true);
                }
            }
        }
        this.lastPlayState = i10;
        this.videoPreloadDelegate.onStateChanged(i10);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPositionDiscontinuity(int i10) {
        ConcatenatingMediaSource concatenatingMediaSource;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPositionDiscontinuity(i10);
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
        this.videoLogHelper.onPositionDiscontinuity(i10);
        if (i10 != 0 || getPlayerState() != 3 || (concatenatingMediaSource = this.concatenatingMediaSource) == null || concatenatingMediaSource.O0() <= 1) {
            return;
        }
        this.videoPreloadDelegate.onPositionDiscontinuity();
    }

    @Override // androidx.media3.common.Player.Listener
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

    @Override // androidx.media3.common.Player.Listener
    public void onSurfaceSizeChanged(int i10, int i11) {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onSurfaceSizeChanged(i10, i11);
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public void onVideoSizeChanged(VideoSize videoSize) {
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onVideoSizeChanged(videoSize.width, videoSize.height);
            this.mVideoListener.onVideoSizeChanged(videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void preload(NVContext nVContext, List<Media> list) {
        ExoPreloadUtil.INSTANCE.startPreload(list, this, nVContext.getContext().getApplicationContext(), true);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void release() {
        int i10 = referenceCount - 1;
        referenceCount = i10;
        if (i10 == 0) {
            this.mExoPlayer.release();
            nvExoPlayer = null;
            this.mCache.release();
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void removeWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener) {
        this.windowIndexChangeListeners.remove(windowIndexChangeListener);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekToWindow(final int i10) {
        List<Media> list;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || i10 < 0 || i10 > list.size() - 1) {
            return;
        }
        String videoUrlWithRes = this.mediaSource.getVideoUrlWithRes(i10, this.loadLowResVideo);
        if (videoUrlWithRes != null && this.mediaSource.mediaList.size() > i10 && isCached(videoUrlWithRes, 0L, getPreCachedSize())) {
            this.concatenatingVideoCached = true;
        }
        if (!this.mediaSource.isPollOrQuiz()) {
            Timeline currentTimeline = this.mExoPlayer.getCurrentTimeline();
            if (currentTimeline.u() || i10 < currentTimeline.t()) {
                this.videoLogHelper.playAnotherVideo(null);
                this.videoPreloadDelegate.onStateChanged(2);
                this.mExoPlayer.seekTo(i10, 0L);
                return;
            }
            return;
        }
        if (i10 == this.concatenatingMediaSource.O0() - 1) {
            this.videoLogHelper.playAnotherVideo(null);
            this.videoPreloadDelegate.onStateChanged(2);
            this.mExoPlayer.seekTo(i10, 0L);
        } else {
            if (i10 > this.concatenatingMediaSource.O0() - 1) {
                this.concatenatingMediaSource.z0(getInnerExoMediaSource(this.loadLowResVideo, this.mediaSource.mediaList.get(i10)), Utils.handler, new Runnable() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Timeline currentTimeline2 = NVExoPlayer.this.mExoPlayer.getCurrentTimeline();
                        if (currentTimeline2.u() || i10 < currentTimeline2.t()) {
                            NVExoPlayer.this.videoLogHelper.playAnotherVideo(null);
                            NVExoPlayer.this.videoPreloadDelegate.onStateChanged(2);
                            NVExoPlayer.this.mExoPlayer.seekTo(i10, 0L);
                        }
                    }
                });
                return;
            }
            if (i10 < this.concatenatingMediaSource.O0() - 1) {
                this.videoLogHelper.playAnotherVideo(null);
                this.videoPreloadDelegate.onStateChanged(2);
                this.mExoPlayer.seekTo(i10, 0L);
                ConcatenatingMediaSource concatenatingMediaSource = this.concatenatingMediaSource;
                concatenatingMediaSource.V0(i10 + 1, concatenatingMediaSource.O0());
            }
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    @OptIn
    public void setPlayWhenReady(boolean z6, boolean z10) {
        List arrayList;
        int iIntValue;
        int currentWindowIndex;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (arrayList = nVMediaSource.mediaList) == null) {
            arrayList = new ArrayList();
        }
        if (z6) {
            if (z10 && this.mIndexMap.get(Integer.valueOf(arrayList.hashCode())) != null && (iIntValue = this.mIndexMap.get(Integer.valueOf(arrayList.hashCode())).intValue()) >= 0 && iIntValue < arrayList.size() && this.mPositionMap.get(((Media) arrayList.get(iIntValue)).url) != null) {
                seekTo(iIntValue, this.mPositionMap.get(((Media) arrayList.get(iIntValue)).url).longValue());
            }
            this.mExoPlayer.setPlayWhenReady(true);
            return;
        }
        this.mExoPlayer.setPlayWhenReady(false);
        if (!z10 || (currentWindowIndex = this.mExoPlayer.getCurrentWindowIndex()) < 0 || currentWindowIndex >= arrayList.size() || arrayList.get(currentWindowIndex) == null || ((Media) arrayList.get(currentWindowIndex)).url == null) {
            return;
        }
        this.mPositionMap.put(((Media) arrayList.get(currentWindowIndex)).url, Long.valueOf(getCurrentPosition()));
        this.mIndexMap.put(Integer.valueOf(arrayList.hashCode()), Integer.valueOf(currentWindowIndex));
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoSurface(Surface surface) {
        this.mSurface = surface;
        this.mExoPlayer.setVideoSurface(surface);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVolume(float f) {
        if (this.lockMute) {
            return;
        }
        this.mExoPlayer.setVolume(f);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long size() {
        return Utils.getFolderSize(this.mCacheFile);
    }

    @OptIn
    private NVExoPlayer(Context context) {
        long availableExternalMemorySize;
        long j6;
        boolean z6 = false;
        this.mContext = context;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(context);
        DefaultBandwidthMeter defaultBandwidthMeterA = new DefaultBandwidthMeter.Builder(context).a();
        defaultBandwidthMeterA.c(Utils.handler, new BandwidthMeter.EventListener() { // from class: com.narvii.nvplayer.exoplayer.b
            @Override // androidx.media3.exoplayer.upstream.BandwidthMeter.EventListener
            public final void onBandwidthSample(int i10, long j10, long j11) {
                this.f2557a.lambda$new$0(i10, j10, j11);
            }
        });
        VideoPreloadDelegate videoPreloadDelegate = new VideoPreloadDelegate(this);
        this.videoPreloadDelegate = videoPreloadDelegate;
        ExoPreloadUtil.INSTANCE.setVideoPreloadDelegate(videoPreloadDelegate);
        this.mExoPlayer = new ExoPlayer.Builder(context, new DefaultRenderersFactory(context)).P(defaultTrackSelector).O(new DefaultLoadControl.Builder().b(new DefaultAllocator(true, 65536)).a()).N(defaultBandwidthMeterA).t();
        this.videoLogHelper = new VideoLogHelper(context, this);
        if (this.mCache == null) {
            File externalCacheDir = context.getExternalCacheDir();
            if (externalCacheDir == null || externalCacheDir.isDirectory()) {
                externalCacheDir = context.getCacheDir();
                z6 = true;
            }
            if (z6) {
                availableExternalMemorySize = (StorageUtils.getAvailableInternalMemorySize() * 5) / 100;
            } else {
                availableExternalMemorySize = (StorageUtils.getAvailableExternalMemorySize(context) * 5) / 100;
            }
            if (a2.b.d(context.getApplicationContext()) > 2013) {
                j6 = BETTER_PERFORMANCE_CACHE_SIZE;
            } else {
                j6 = DEFAULT_CACHE_SIZE;
            }
            long jMin = Math.min(availableExternalMemorySize, j6);
            this.mCacheFile = new File(externalCacheDir, "exo-cache");
            this.mCache = new SimpleCache(this.mCacheFile, new LeastRecentlyUsedCacheEvictor(jMin), new ExoDatabaseProvider(this.mContext));
        }
        this.mExoPlayer.L(this);
        this.mExoPlayer.H(true);
    }

    private MediaSource buildMediaSource(Uri uri, DataSource.Factory factory, Context context) {
        int iV0 = Util.v0(uri.getLastPathSegment());
        if (iV0 != 0) {
            if (iV0 != 1) {
                if (iV0 != 2) {
                    if (iV0 == 4) {
                        return new ProgressiveMediaSource.Factory(factory, new DefaultExtractorsFactory()).d(MediaItem.d(uri));
                    }
                    throw new IllegalStateException("Unsupported type: " + iV0);
                }
                return new HlsMediaSource.Factory(factory).d(MediaItem.d(uri));
            }
            return new SsMediaSource.Factory(new DefaultSsChunkSource.Factory(factory), new DefaultDataSourceFactory(context, (TransferListener) null, factory)).d(MediaItem.d(uri));
        }
        return new DashMediaSource.Factory(new DefaultDashChunkSource.Factory(factory), new DefaultDataSourceFactory(context, (TransferListener) null, factory)).d(MediaItem.d(uri));
    }

    private String getCauseString(PlaybackException playbackException) {
        if (playbackException.getCause() == null) {
            return playbackException.toString();
        }
        if (stackTraceIsNotEmpty(playbackException)) {
            return playbackException.getStackTrace()[0].toString();
        }
        return playbackException.toString();
    }

    private DataSource.Factory getDataSourceFactory(Uri uri, Context context) {
        String scheme = uri.getScheme();
        if (!"asset".equals(scheme) && !"file".equals(scheme)) {
            return new DefaultHttpDataSource.Factory().e(DatabaseProvider.TABLE_PREFIX).c(8000).d(8000).b(true);
        }
        return new DefaultDataSourceFactory(context, DatabaseProvider.TABLE_PREFIX);
    }

    @Nullable
    private MediaSource getExoMediaSource(Context context, String[] strArr) {
        MediaSource innerExoMediaSource = getInnerExoMediaSource(context, strArr);
        if (innerExoMediaSource == null) {
            return null;
        }
        return this.mediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i10, long j6, long j10) {
        if (NVVideoView.isDebug()) {
            this.curBitRate = (int) (j10 / 1000);
            IVideoListener iVideoListener = this.mVideoListener;
            if (iVideoListener != null) {
                iVideoListener.onPreloadStrategyChanged(this.curBitRate + "kbps, " + ExoPreloadUtil.INSTANCE.preloadStrategyDebugInfo());
            }
        }
    }

    private boolean stackTraceIsNotEmpty(PlaybackException playbackException) {
        if (playbackException.getStackTrace().length >= 1) {
            return true;
        }
        return false;
    }

    public NVCacheDataSourceFactory createCacheDataSourceFactory(Uri uri, Context context) {
        return new NVCacheDataSourceFactory(this.mCache, getDataSourceFactory(uri, context), new FileDataSource.Factory(), new CacheDataSink.Factory().a(this.mCache).b(2097152L), 2, new CacheDataSource.EventListener() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.4
            @Override // androidx.media3.datasource.cache.CacheDataSource.EventListener
            public void onCacheIgnored(int i10) {
            }

            @Override // androidx.media3.datasource.cache.CacheDataSource.EventListener
            public void onCachedBytesRead(long j6, long j10) {
                if (!NVExoPlayer.this.settingFlag || NVExoPlayer.this.mVideoListener == null) {
                    return;
                }
                NVExoPlayer.this.mVideoListener.onCachedBytesRead(j6, j10);
                NVExoPlayer.this.settingFlag = false;
            }
        }, this.cacheKeyFactory);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isCached(String str, long j6, long j10) {
        String urlWithoutQuery = Utils.getUrlWithoutQuery(str);
        long j11 = this.mCache.getContentMetadata(urlWithoutQuery).get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
        if (j11 == -1) {
            return this.mCache.isCached(urlWithoutQuery, j6, j10);
        }
        return this.mCache.isCached(urlWithoutQuery, j6, Math.min(j11, j10));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    @Override // androidx.media3.common.Player.Listener
    public void onPlayerError(PlaybackException playbackException) {
        int i10;
        YoutubeVideoList youtubeVideoList;
        YoutubeVideo youtubeVideoFindVideoInTargetList;
        String message = playbackException.getMessage();
        int i11 = playbackException.errorCode;
        if (i11 != 5001 && i11 != 5002) {
            switch (i11) {
                case 1000:
                case 1001:
                case 1002:
                case 1003:
                case 1004:
                    sendCauseToListener(playbackException);
                    i10 = -2;
                    break;
                default:
                    switch (i11) {
                        case 2000:
                        case 2001:
                        case 2002:
                        case 2003:
                        case 2004:
                        case 2005:
                        case 2006:
                        case 2007:
                        case 2008:
                            sendErrorToListener(playbackException);
                            i10 = 2;
                            break;
                        default:
                            switch (i11) {
                                default:
                                    switch (i11) {
                                        default:
                                            switch (i11) {
                                                case 6000:
                                                case 6001:
                                                case 6002:
                                                case 6003:
                                                case 6004:
                                                case 6005:
                                                case 6006:
                                                case 6007:
                                                case 6008:
                                                    break;
                                                default:
                                                    i10 = -2;
                                                    break;
                                            }
                                        case 4001:
                                        case 4002:
                                        case 4003:
                                        case 4004:
                                        case 4005:
                                            sendCauseToListener(playbackException);
                                            removeVideoCacheWhenError();
                                            if (this.isYoutubeVideo) {
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
                                            i10 = 1;
                                            break;
                                    }
                                case 3001:
                                case 3002:
                                case 3003:
                                case 3004:
                                    sendCauseToListener(playbackException);
                                    removeVideoCacheWhenError();
                                    if (this.isYoutubeVideo) {
                                        NVMediaSource nVMediaSource3 = this.mediaSource;
                                        NVMediaSource nVMediaSource4 = new NVMediaSource();
                                        nVMediaSource4.mediaList = new ArrayList();
                                        Media media2 = new Media();
                                        media2.url = youtubeVideoFindVideoInTargetList.url;
                                        media2.type = 102;
                                        nVMediaSource4.mediaList.add(media2);
                                        quickSetting(NVApplication.instance(), nVMediaSource4, this.mSurface);
                                        this.mediaSource = nVMediaSource3;
                                    }
                                    i10 = 1;
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            sendCauseToListener(playbackException);
            removeVideoCacheWhenError();
            if (this.isYoutubeVideo && (youtubeVideoList = this.youtubeVideoList) != null && (youtubeVideoFindVideoInTargetList = youtubeVideoList.findVideoInTargetList(youtubeVideoList.list, LOW_RES, null)) != null && !android.text.TextUtils.isEmpty(youtubeVideoFindVideoInTargetList.url)) {
                NVMediaSource nVMediaSource5 = this.mediaSource;
                NVMediaSource nVMediaSource6 = new NVMediaSource();
                nVMediaSource6.mediaList = new ArrayList();
                Media media3 = new Media();
                media3.url = youtubeVideoFindVideoInTargetList.url;
                media3.type = 102;
                nVMediaSource6.mediaList.add(media3);
                quickSetting(NVApplication.instance(), nVMediaSource6, this.mSurface);
                this.mediaSource = nVMediaSource5;
            }
            i10 = 1;
        }
        this.videoLogHelper.onPlayError(i10, message);
        removeVideoCacheWhenError();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void quickSetting(final Context context, NVMediaSource nVMediaSource, final Surface surface) {
        List<Media> list;
        boolean z6;
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
        if (nVContext != null && (list = nVMediaSource.mediaList) != null && list.size() != 0) {
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
            if (arrayList.size() == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.youtubeVideoList = null;
            if (z6) {
                Media media2 = (Media) arrayList.get(0);
                if (YoutubeUtils.isYtvScheme(media2.url)) {
                    this.isYoutubeVideo = true;
                    final String str2 = media2.url;
                    YoutubeService youtubeService = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
                    this.videoLogHelper.onPlayerStateChanged(2);
                    youtubeService.exec(YoutubeUtils.getYoutubeVideoIdFromUrl(str2), null, new YoutubeVideoCallback() { // from class: com.narvii.nvplayer.exoplayer.NVExoPlayer.3
                        @Override // com.narvii.youtube.YoutubeVideoCallback
                        public void onFail(String str3, int i10, String str4) {
                            if (NVExoPlayer.this.isCurrentYtvUrl(str2)) {
                                NVExoPlayer.this.videoLogHelper.onPlayError(1);
                                if (NVExoPlayer.this.mVideoListener != null) {
                                    NVExoPlayer.this.mVideoListener.onPlayerError(new NVVideoException(str4));
                                }
                            }
                        }

                        @Override // com.narvii.youtube.YoutubeVideoCallback
                        public void onFinish(String str3, YoutubeVideoList youtubeVideoList) {
                            if (NVExoPlayer.this.isCurrentYtvUrl(str2)) {
                                NVExoPlayer.this.youtubeVideoList = youtubeVideoList;
                                String url = youtubeVideoList.getUrl();
                                NVExoPlayer nVExoPlayer = NVExoPlayer.this;
                                nVExoPlayer.prepare(nVExoPlayer.getExoMediaSource(context, url), surface);
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
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void retry() {
        quickSetting(NVApplication.instance(), this.mediaSource, this.mSurface);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekTo(long j6, boolean z6) {
        if (z6) {
            this.mExoPlayer.seekTo(j6);
        } else {
            seekTo(j6);
        }
    }

    public void updatePreloadLevel() {
        IVideoListener iVideoListener;
        if (NVVideoView.isDebug() && (iVideoListener = this.mVideoListener) != null) {
            iVideoListener.onPreloadStrategyChanged(this.curBitRate + "kbps, " + ExoPreloadUtil.INSTANCE.preloadStrategyDebugInfo());
        }
    }

    @Nullable
    private MediaSource getExoMediaSource(Context context, NVMediaSource nVMediaSource) {
        List<Media> list;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null) {
            return null;
        }
        String[] videoUrlsFromMediaList = MediaHelper.getVideoUrlsFromMediaList(list);
        if (!nVMediaSource.isPollOrQuiz()) {
            MediaSource innerExoMediaSource = getInnerExoMediaSource(context, videoUrlsFromMediaList);
            if (innerExoMediaSource == null) {
                return null;
            }
            return nVMediaSource.loop ? new LoopingMediaSource(innerExoMediaSource) : innerExoMediaSource;
        }
        return getInnerExoMediaSource(context, new String[]{videoUrlsFromMediaList[0]});
    }

    public void seekTo(int i10, long j6) {
        this.mExoPlayer.seekTo(i10, j6);
    }

    @Nullable
    private MediaSource getInnerExoMediaSource(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (!"asset".equals(scheme) && !"file".equals(scheme) && !this.mediaSource.getNotCache()) {
            return buildMediaSource(uri, createCacheDataSourceFactory(uri, context), context);
        }
        return buildMediaSource(uri, getDataSourceFactory(uri, context), context);
    }
}
