package com.narvii.nvplayer.ijkplayer;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
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
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.video.MediaPreloadService;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
public class NVIjkPlayer implements INVPlayer, IMediaPlayer.OnInfoListener, IMediaPlayer.OnErrorListener, IMediaPlayer.OnBufferingUpdateListener, IMediaPlayer.OnPreparedListener, IMediaPlayer.OnCompletionListener {
    private static NVIjkPlayer nvIjkPlayer;
    private static int referenceCount;
    private float audioVolume;
    private boolean autoStart;
    private int currentWindowIndex;
    private boolean loadIjkSucc;
    private boolean lockMute;
    private Context mContext;
    private long mDuration;
    private Handler mHandler;
    private IMediaPlayer mMediaPlayer;
    private int mState;
    private Surface mSurface;
    private IVideoListener mVideoListener;
    private float mVolume;
    private MediaPreloadService mediaPreloadService;
    private boolean mediaPreloadServiceInited;
    private NVMediaSource mediaSource;
    private boolean pendingManualWindowChange;
    private boolean playWhenReady;
    private boolean prepared;
    private boolean seekToLastPos;
    private boolean skipLogNextSeek;
    private VideoLogHelper videoLogHelper;
    private Runnable windowIndexRunnable;
    private int ytvFlag;
    private Map<String, Long> mPositionMap = new HashMap();
    private boolean loop = true;
    private boolean firstFrameFlag = false;
    private long settingBeginTime = 0;
    private boolean ignoreBufferingState = false;

    @Override // com.narvii.nvplayer.INVPlayer
    public void addWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clearVideoSurface() {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void concatenatingQuickSetting(Context context, List<NvVideoClip> list) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ long getPreCachedSize() {
        return INVPlayer.CC.$default$getPreCachedSize(this);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isCached(String str, long j, long j2) {
        return false;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ boolean isError() {
        return INVPlayer.CC.$default$isError(this);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ boolean isLoadLowResVideo() {
        return INVPlayer.CC.$default$isLoadLowResVideo(this);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void preload(NVContext nVContext, List<Media> list) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void removeWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener) {
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ void retry() {
        INVPlayer.CC.$default$retry(this);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public /* synthetic */ void seekTo(long j, boolean z) {
        INVPlayer.CC.$default$seekTo(this, j, z);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long size() {
        return 0L;
    }

    private NVIjkPlayer(Context context) {
        try {
            IjkMediaPlayer.loadLibrariesOnce(null);
            IjkMediaPlayer.native_profileBegin("libijkplayer.so");
            this.loadIjkSucc = true;
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            this.loadIjkSucc = false;
        }
        initMediaPlayer(context);
        this.videoLogHelper = new VideoLogHelper(context, this);
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public static NVIjkPlayer getInstance(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Log.w(INVPlayer.TAG, "NVPlayer is accessed on the wrong thread");
        }
        referenceCount++;
        if (nvIjkPlayer == null) {
            nvIjkPlayer = new NVIjkPlayer(context);
        }
        return nvIjkPlayer;
    }

    private void quickSetting(final Context context, final String str) throws IllegalStateException, SecurityException, IllegalArgumentException {
        MediaPreloadService mediaPreloadService;
        reset();
        setVolume(this.audioVolume);
        this.mState = 1;
        NVContext nVContext = Utils.getNVContext(context);
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerStateChanged(false, 1);
        }
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null) {
            this.videoLogHelper.playAnotherVideo(nVMediaSource);
        }
        if (YoutubeUtils.isYtvScheme(str) && nVContext != null) {
            this.videoLogHelper.onPlayerStateChanged(2);
            this.ytvFlag++;
            final int i = this.ytvFlag;
            YoutubeService youtubeService = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
            final String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
            youtubeService.exec(youtubeVideoIdFromUrl, null, new YoutubeVideoCallback() { // from class: com.narvii.nvplayer.ijkplayer.NVIjkPlayer.1
                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFinish(String str2, YoutubeVideoList youtubeVideoList) throws IllegalStateException, SecurityException, IllegalArgumentException {
                    if (NVIjkPlayer.this.isCurrentYtvUrl(str) && i == NVIjkPlayer.this.ytvFlag) {
                        String url = youtubeVideoList.getUrl();
                        MediaPreloadService mediaPreloadService2 = NVIjkPlayer.this.getMediaPreloadService();
                        if (mediaPreloadService2 != null) {
                            url = mediaPreloadService2.translateUrl(youtubeVideoIdFromUrl, url);
                        }
                        NVIjkPlayer.this.setSimpleDataSource(context, url);
                        NVIjkPlayer.this.setLoop(true);
                        NVIjkPlayer.this.setAutoStart(true);
                        NVIjkPlayer.this.prepare();
                    }
                }

                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFail(String str2, int i2, String str3) {
                    if (NVIjkPlayer.this.isCurrentYtvUrl(str)) {
                        if (NVIjkPlayer.this.mVideoListener != null) {
                            NVIjkPlayer.this.mVideoListener.onPlayerError(new NVVideoException(str3));
                        }
                        NVIjkPlayer.this.videoLogHelper.onPlayError(1);
                    }
                }
            });
            return;
        }
        if ("photo".equals(Uri.parse(str).getScheme())) {
            PhotoManager photoManager = (PhotoManager) Utils.getNVContext(this.mContext).getService("photo");
            if (photoManager != null) {
                setSimpleDataSource(context, photoManager.getPath(str).getAbsolutePath());
                setLoop(true);
                setAutoStart(true);
                prepare();
                return;
            }
            IVideoListener iVideoListener2 = this.mVideoListener;
            if (iVideoListener2 != null) {
                iVideoListener2.onPlayerError(new NVVideoException("PhotoManager is null!"));
                return;
            }
            return;
        }
        Uri uri = Uri.parse(str);
        if (("http".equals(uri.getScheme()) || "https".equals(uri.getScheme())) && (mediaPreloadService = getMediaPreloadService()) != null) {
            str = mediaPreloadService.translateUrl(String.valueOf(Math.abs(uri.toString().hashCode())), uri.toString());
        }
        setSimpleDataSource(context, str);
        setLoop(true);
        setAutoStart(true);
        prepare();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentYtvUrl(String str) {
        NVMediaSource nVMediaSource = this.mediaSource;
        return (nVMediaSource == null || nVMediaSource.mediaList.size() == 0 || !TextUtils.equals(this.mediaSource.mediaList.get(0).url, str)) ? false : true;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoSurface(Surface surface) {
        IVideoListener iVideoListener;
        this.mSurface = surface;
        this.mMediaPlayer.setSurface(surface);
        int videoWidth = this.mMediaPlayer.getVideoWidth();
        int videoHeight = this.mMediaPlayer.getVideoHeight();
        if (videoHeight == 0 || videoWidth == 0 || (iVideoListener = this.mVideoListener) == null) {
            return;
        }
        iVideoListener.onVideoSizeChanged(videoWidth, videoHeight);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clearVideoListener(IVideoListener iVideoListener) {
        if (this.mVideoListener == iVideoListener) {
            this.mVideoListener = null;
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public Surface getVideoSurface() {
        return this.mSurface;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setPlayWhenReady(boolean z) throws IllegalStateException {
        setPlayWhenReady(z, false);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setPlayWhenReady(boolean z, boolean z2) throws IllegalStateException {
        if (!z) {
            NVMediaSource nVMediaSource = this.mediaSource;
            if (nVMediaSource != null) {
                this.mPositionMap.put(nVMediaSource.toString(), Long.valueOf(getCurrentPosition()));
            }
            pause();
            return;
        }
        this.seekToLastPos = z2;
        if (this.seekToLastPos) {
            NVMediaSource nVMediaSource2 = this.mediaSource;
            Long l = nVMediaSource2 == null ? 0L : this.mPositionMap.get(nVMediaSource2.toString());
            if (l != null) {
                seekTo(l.longValue());
            }
        }
        start();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekTo(long j) throws IllegalStateException {
        if (this.skipLogNextSeek) {
            this.skipLogNextSeek = false;
        } else if (j == 0) {
            this.videoLogHelper.playAnotherVideo(null);
        }
        this.mMediaPlayer.seekTo(j);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void reset() throws IllegalStateException {
        this.prepared = false;
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.stop();
            this.mMediaPlayer.reset();
        }
        if (this.loadIjkSucc) {
            return;
        }
        initMediaPlayer(this.mContext);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void release() {
        IMediaPlayer iMediaPlayer;
        this.prepared = false;
        referenceCount--;
        if (referenceCount != 0 || (iMediaPlayer = this.mMediaPlayer) == null) {
            return;
        }
        iMediaPlayer.release();
        this.mMediaPlayer = null;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getPlayerState() {
        return this.mState;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public boolean isPlaying() {
        return this.mMediaPlayer.isPlaying();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getCurrentPosition() {
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null && nVMediaSource.mediaList.size() > 1) {
            int currentWindowIndex = getCurrentWindowIndex();
            long currentPosition = this.mMediaPlayer.getCurrentPosition();
            for (int i = 0; i < currentWindowIndex; i++) {
                currentPosition -= this.mediaSource.mediaList.get(i).duration;
            }
            return currentPosition;
        }
        return this.mMediaPlayer.getCurrentPosition();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getDuration() {
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null && nVMediaSource.mediaList.size() > 1) {
            return this.mediaSource.mediaList.get(getCurrentWindowIndex()).duration;
        }
        return this.mMediaPlayer.getDuration();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public long getTotalDuration() {
        return this.mMediaPlayer.getDuration();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public NVMediaSource getMediaSource() {
        return this.mediaSource;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public String getPlayingUrl() {
        List<Media> list;
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || list.size() == 0) {
            return null;
        }
        return this.mediaSource.mediaList.get(0).getMediaUrl();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVolume(float f) {
        if (this.lockMute) {
            return;
        }
        this.audioVolume = f;
        this.mMediaPlayer.setVolume(f, f);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setLoop(boolean z) {
        this.loop = z;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void setVideoListener(IVideoListener iVideoListener) {
        this.mVideoListener = iVideoListener;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) throws IllegalStateException {
        this.mState = 4;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerStateChanged(true, 4);
        }
        if (this.loop) {
            this.videoLogHelper.onLoopPlayCompleteOnce();
            this.skipLogNextSeek = true;
            this.ignoreBufferingState = true;
            seekTo(0L);
            start();
            return;
        }
        this.videoLogHelper.onPlayerStateChanged(4);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
    public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
        int i3 = 1;
        this.mState = 1;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerError(new NVVideoException("ijkPlayer error: " + i));
        }
        if (i2 == -1010) {
            i3 = 2;
        } else if (i2 != -1007 && i2 != -1004 && i2 != -110) {
            i3 = -2;
        }
        this.videoLogHelper.onPlayError(i3);
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
        if (i == 3) {
            this.mState = 3;
            IVideoListener iVideoListener = this.mVideoListener;
            if (iVideoListener != null) {
                iVideoListener.onRenderedFirstFrame();
                if (this.firstFrameFlag) {
                    this.mVideoListener.onRenderFirstFrameInterval(System.currentTimeMillis() - this.settingBeginTime);
                    this.firstFrameFlag = false;
                }
                this.mVideoListener.onPlayerStateChanged(this.playWhenReady, 3);
            }
            this.videoLogHelper.onPlayerStateChanged(3);
        } else if (i == 701) {
            this.mState = 2;
            IVideoListener iVideoListener2 = this.mVideoListener;
            if (iVideoListener2 != null) {
                if (!this.ignoreBufferingState) {
                    iVideoListener2.onPlayerStateChanged(this.playWhenReady, 2);
                }
                this.ignoreBufferingState = false;
            }
            this.videoLogHelper.onPlayerStateChanged(2);
        } else if (i == 702) {
            this.mState = 3;
            IVideoListener iVideoListener3 = this.mVideoListener;
            if (iVideoListener3 != null) {
                iVideoListener3.onPlayerStateChanged(this.playWhenReady, 3);
            }
            this.videoLogHelper.onPlayerStateChanged(3);
        }
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) throws IllegalStateException {
        this.prepared = true;
        IMediaPlayer iMediaPlayer2 = this.mMediaPlayer;
        if (iMediaPlayer2 != null) {
            if (this.autoStart) {
                iMediaPlayer2.start();
            }
            this.mDuration = this.mMediaPlayer.getDuration();
            IVideoListener iVideoListener = this.mVideoListener;
            if (iVideoListener != null) {
                iVideoListener.onVideoSizeChanged(this.mMediaPlayer.getVideoWidth(), this.mMediaPlayer.getVideoHeight());
            }
        }
    }

    private void initMediaPlayer(Context context) {
        this.mContext = context;
        if (this.loadIjkSucc) {
            this.mMediaPlayer = new IjkMediaPlayer();
            setOption();
        } else {
            this.mMediaPlayer = new AndroidMediaPlayer();
        }
        this.mMediaPlayer.setOnErrorListener(this);
        this.mMediaPlayer.setOnInfoListener(this);
        this.mMediaPlayer.setOnBufferingUpdateListener(this);
        this.mMediaPlayer.setOnPreparedListener(this);
        this.mMediaPlayer.setOnCompletionListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimpleDataSource(Context context, String str) throws IllegalStateException, SecurityException, IllegalArgumentException {
        try {
            this.mMediaPlayer.setDataSource(context, Uri.parse(str));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoStart(boolean z) {
        this.autoStart = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepare() throws IllegalStateException {
        this.videoLogHelper.onPlayerStateChanged(2);
        this.mMediaPlayer.prepareAsync();
    }

    private void start() throws IllegalStateException {
        IVideoListener iVideoListener;
        if (this.prepared && !this.mMediaPlayer.isPlaying() && (iVideoListener = this.mVideoListener) != null) {
            iVideoListener.onRenderedFirstFrame();
        }
        this.mMediaPlayer.start();
        this.playWhenReady = true;
        this.mHandler.post(new Runnable() { // from class: com.narvii.nvplayer.ijkplayer.NVIjkPlayer.2
            @Override // java.lang.Runnable
            public void run() {
                if (NVIjkPlayer.this.isPlaying()) {
                    if (NVIjkPlayer.this.mVideoListener != null) {
                        NVIjkPlayer.this.mVideoListener.onPlayerStateChanged(true, NVIjkPlayer.this.mState);
                    }
                    NVIjkPlayer.this.videoLogHelper.onPlayerStateChanged(NVIjkPlayer.this.mState);
                }
            }
        });
    }

    private void pause() throws IllegalStateException {
        this.mMediaPlayer.pause();
        this.playWhenReady = false;
        this.mHandler.post(new Runnable() { // from class: com.narvii.nvplayer.ijkplayer.NVIjkPlayer.3
            @Override // java.lang.Runnable
            public void run() {
                if (NVIjkPlayer.this.mVideoListener != null) {
                    NVIjkPlayer.this.mVideoListener.onPlayerStateChanged(false, NVIjkPlayer.this.mState);
                }
                NVIjkPlayer.this.videoLogHelper.onPlayerStateChanged(NVIjkPlayer.this.mState);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void concatenatingQuickSetting(Context context, String[] strArr, float[] fArr) throws Throwable {
        FileOutputStream fileOutputStream;
        IVideoListener iVideoListener = this.mVideoListener;
        if (iVideoListener != null) {
            iVideoListener.onPlayerStateChanged(true, 1);
        }
        reset();
        setOption();
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null) {
            this.videoLogHelper.playAnotherVideo(nVMediaSource);
        }
        File file = new File(context.getCacheDir().getAbsolutePath() + "/test.ffconcat");
        if (file.exists()) {
            file.delete();
            file = new File(context.getCacheDir().getAbsolutePath() + "/test.ffconcat");
        }
        FileOutputStream fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
            fileOutputStream = fileOutputStream2;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("ffconcat version 1.0\n");
            MediaPreloadService mediaPreloadService = getMediaPreloadService();
            int i = 0;
            if (fArr != null && fArr.length == strArr.length) {
                while (i < strArr.length) {
                    sb.append("file '");
                    Uri uri = Uri.parse(strArr[i]);
                    if (("http".equals(uri.getScheme()) || "https".equals(uri.getScheme())) && mediaPreloadService != null) {
                        sb.append(mediaPreloadService.translateUrl(String.valueOf(Math.abs(uri.toString().hashCode())), uri.toString()));
                    } else {
                        sb.append(strArr[i]);
                    }
                    sb.append("'\n");
                    sb.append("duration ");
                    sb.append(fArr[i] / 1000.0f);
                    sb.append("\n");
                    i++;
                }
            } else {
                int length = strArr.length;
                while (i < length) {
                    String str = strArr[i];
                    sb.append("file '");
                    sb.append(str);
                    sb.append("'\n");
                    i++;
                }
            }
            fileOutputStream.write(sb.toString().getBytes());
            setSimpleDataSource(context, "file://" + file.getAbsolutePath());
            setAutoStart(true);
            prepare();
            fileOutputStream.close();
            fileOutputStream2 = sb;
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
                fileOutputStream2 = fileOutputStream2;
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void quickSetting(Context context, NVMediaSource nVMediaSource, Surface surface) throws Throwable {
        this.firstFrameFlag = true;
        this.settingBeginTime = System.currentTimeMillis();
        if (nVMediaSource == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Media media : nVMediaSource.mediaList) {
            if (media.isVideo()) {
                arrayList.add(media);
            }
        }
        configMediaSource(nVMediaSource);
        if (arrayList.size() == 1) {
            quickSetting(context, ((Media) arrayList.get(0)).url);
            setVideoSurface(surface);
        } else {
            concatenatingQuickSetting(context, MediaHelper.getVideoUrlsFromMediaList(arrayList), MediaHelper.getVideoDurationsFromMediaList(arrayList));
            setVideoSurface(surface);
        }
    }

    private void configMediaSource(NVMediaSource nVMediaSource) {
        this.mediaSource = nVMediaSource;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void clear() {
        release();
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void lockMute(boolean z) {
        this.lockMute = z;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public void seekToWindow(int i) throws IllegalStateException {
        List<Media> list;
        ArrayList arrayList = new ArrayList();
        NVMediaSource nVMediaSource = this.mediaSource;
        if (nVMediaSource != null && (list = nVMediaSource.mediaList) != null) {
            Iterator<Media> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Long.valueOf(it.next().duration));
            }
        }
        if (i < arrayList.size() && i >= 0) {
            long jLongValue = 0;
            for (int i2 = 0; i2 < i; i2++) {
                jLongValue += ((Long) arrayList.get(i2)).longValue();
            }
            this.skipLogNextSeek = true;
            this.pendingManualWindowChange = i != getCurrentWindowIndex();
            seekTo(jLongValue);
            this.videoLogHelper.playAnotherVideo(null, i == 0);
            return;
        }
        Log.d(INVPlayer.TAG, "seekToWindow: error window index " + i);
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public int getCurrentWindowIndex() {
        NVMediaSource nVMediaSource;
        long currentPosition = this.mMediaPlayer.getCurrentPosition();
        if (currentPosition >= 0 && (nVMediaSource = this.mediaSource) != null && nVMediaSource.mediaList != null) {
            long j = 0;
            for (int i = 0; i < this.mediaSource.mediaList.size(); i++) {
                j += this.mediaSource.mediaList.get(i).duration;
                if (currentPosition <= j) {
                    return i;
                }
            }
        }
        return 0;
    }

    @Override // com.narvii.nvplayer.INVPlayer
    public VideoLogHelper getVideoLogHelper() {
        return this.videoLogHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaPreloadService getMediaPreloadService() {
        if (this.mediaPreloadServiceInited) {
            return this.mediaPreloadService;
        }
        NVContext nVContext = Utils.getNVContext(this.mContext);
        if (nVContext == null) {
            this.mediaPreloadService = null;
        } else {
            this.mediaPreloadService = (MediaPreloadService) nVContext.getService("mediapreload");
            this.mediaPreloadServiceInited = true;
        }
        return this.mediaPreloadService;
    }

    private void setOption() {
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer instanceof IjkMediaPlayer) {
            IjkMediaPlayer ijkMediaPlayer = (IjkMediaPlayer) iMediaPlayer;
            ijkMediaPlayer.setOption(1, "safe", 0L);
            ijkMediaPlayer.setOption(4, "mediacodec", 0L);
            ijkMediaPlayer.setOption(4, "OPT_CATEGORY_PLAYER", 1L);
            ijkMediaPlayer.setOption(1, "protocol_whitelist", "rtmp,concat,ffconcat,file,subfile,http,https,tls,rtp,tcp,udp,crypto");
            ijkMediaPlayer.setOption(1, "safe", 0L);
            ijkMediaPlayer.setOption(4, "enable-accurate-seek", 1L);
        }
    }
}
